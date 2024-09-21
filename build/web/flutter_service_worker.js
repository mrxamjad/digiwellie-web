'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "03b4b3b883f6c393167152d32d707c7f",
"index.html": "87767d087b1c0f63345c3af9bbc40ef5",
"/": "87767d087b1c0f63345c3af9bbc40ef5",
"main.dart.js": "279e8970db0819d4c3d3e8d735339ceb",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "96e36bd453c98ab075890e69bf60f577",
"assets/AssetManifest.json": "38fd7a18551bc4161b8c662aa394008e",
"assets/NOTICES": "8539aef9e49060c3744b203446dbdcd2",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "7756850b9402e9a980a4189a7a4910c3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "2bad71bb7bd8cc80677ce58181de5b74",
"assets/fonts/MaterialIcons-Regular.otf": "d9b89054f47852048bbbed6db21de09a",
"assets/assets/images/Group%25205.png": "445b51aff4e2b8d8327a12de725b994f",
"assets/assets/images/home_highlight_image.png": "e23d30a831732a23674a276c16284626",
"assets/assets/images/Rectangle%252019.png": "ce4d597d8709b689c3674a7712becc6b",
"assets/assets/images/Rectangle%252018.png": "b5c92599dda28b935b7156913506d9a1",
"assets/assets/images/Python.png": "75689bcaf62819b7b5ef0134f0ee8c92",
"assets/assets/images/NETCore.png": "8f7bf6dba3ec233fadca9d21af474fd6",
"assets/assets/images/RubyOnRails.png": "f6b4d3c7286f904e39a37fb48ce377ae",
"assets/assets/images/Case-study__image.png": "0fef737efeb8283e56ca19cc0456e4e6",
"assets/assets/images/Group%252011.png": "4871a949e23227453acef449caa73e1e",
"assets/assets/images/Java.png": "8062721ce14dced1e52171e1667c3475",
"assets/assets/images/Group%252010.png": "d2ec3926b15bce9bc3b10f7c0c4dbe7c",
"assets/assets/images/mon%25201.png": "8346e3fa3b6e1de2bbce5aa1d30e88f5",
"assets/assets/images/video_image.png": "9b0ea36666025ecbd5963569171d11ec",
"assets/assets/images/Ellipse%2520185-2.png": "7ad7783289aee4e2d5b363cab0d4c65e",
"assets/assets/images/Ellipse%2520185-3.png": "360cf5f3bd57856e46424f900406e2e9",
"assets/assets/images/Go.png": "8c84a59c64c2a409b53b9fd3ffed6009",
"assets/assets/images/google-page-speed%25201.png": "d4af07cdcd5b9ea04e21fee361e45ae4",
"assets/assets/images/kisspng-mysqli-php-database-linux-coding-5ac4824a2e87e0%25201.png": "a9c7df68d8abc9124b38f599ad3e9674",
"assets/assets/images/Ellipse%2520185.png": "4d88e713add636ec35b7aa16562bd6ac",
"assets/assets/images/Case-study__image-3.png": "68d3e98b67808e1b2cf3ca1cc6c6564b",
"assets/assets/images/review2.png": "0ddc2a446bd2035edb4a62e48af24d99",
"assets/assets/images/Rectangle%252017.png": "46139aa6ef84a77a478c9d952fb48103",
"assets/assets/images/review3.png": "24a6601cf7192951b28b00e616dd845f",
"assets/assets/images/Case-study__image-2.png": "c29d48a44fcfa548a2a5ebb84f459afd",
"assets/assets/images/Rectangle%252010-5.png": "4093e2472c2d1d8674a75a3b58d2f813",
"assets/assets/images/review1.png": "af12ce4f3fa3cd49c82992730f4b3c99",
"assets/assets/images/PHP.png": "f256a8ac07b3b48e0ef86fff3a2fc46e",
"assets/assets/images/Rectangle%252010-4.png": "89db32c45d2c3bc66621210a86e00149",
"assets/assets/images/review4.png": "02bc3d4b2d252e61e475b070e5878115",
"assets/assets/images/Rectangle%252010.png": "bdd04d0f0490e83aaca09bab6ce5cd25",
"assets/assets/images/review5.png": "95a4a4c939194c1895d636b7d6059050",
"assets/assets/images/Rectangle%252010-3.png": "58ac1665afd09f094f5aa5506b2bd6d6",
"assets/assets/images/Group%25209.png": "d88fe02c6f13e33b6a9aa487e1dfa7ea",
"assets/assets/images/NodeJS.png": "af96e6102e0f7a2340bc48eddf9965b9",
"assets/assets/images/Rectangle%252010-2.png": "b10e2112fc148ed64e2b0a5514adb895",
"assets/assets/icons/code_icon.png": "7f4e405e35c2a35f7d5ab35a3a2f0ff5",
"assets/assets/icons/breakthrough.png": "0a7241b0f488840976bd0dada5a2bfd8",
"assets/assets/icons/mobile_icon.png": "5dc9c184d20824154a928bf440bb9bcf",
"assets/assets/icons/web_icon.png": "286cdec93c656521022d1a772a496065",
"assets/assets/icons/abc_comapny.png": "1035e5760a64b7d229c19d4144847f80",
"assets/assets/icons/ad_clips.png": "045d66a5d5e3192c3049505e7da51511",
"assets/assets/icons/click_order.png": "e1c9c6021fd62670927569cd779d5742",
"assets/assets/icons/sampath_company.png": "dea6e10b8a903bf5a147640fd294ae96",
"assets/assets/icons/pjc_company.png": "70c599487c50290f4cdf34a6c03eb559",
"assets/assets/icons/tech_mate_company.png": "3cf0561ca3ed69b2bbb12e2023944632",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
