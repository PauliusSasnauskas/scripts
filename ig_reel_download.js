function getReelCodeFromUrl(url) {
  // Assuming path is either /reels/... or /reel/...
  const path = new URL(url).pathname
  const code = path.substring(path.indexOf('/', 1)).replaceAll('/','')

  return code
}

async function getReelData(code) {
  // Inspired by https://github.com/SN-Koarashi/ig-helper/blob/master/main.js
  const magicUrl = `https://www.instagram.com/graphql/query/?query_hash=2c4c2e343a8f64c625ba02b2aa12c7f8&variables=%7B%22shortcode%22:%22${code}%22%7D`;
  const reelData = await fetch(magicUrl).then((response) => response.json())
  return reelData.data
}

async function downloadFile(url) {
  const a = document.createElement("a");
  a.href = url;
  a.download = 'download.mp4';
  document.body.appendChild(a);
  a.click();
}

async function getReelDownloadUrl() {
  const reelCode = getReelCodeFromUrl(location.href)
  const reelData = await getReelData(reelCode)

  if (reelData.shortcode_media.is_video) {
    return reelData.shortcode_media.video_url
  } else {
    console.error('reel is not a video?')
  }
}

// Use it:
const videoUrl = getReelDownloadUrl()
downloadFile(videoUrl)