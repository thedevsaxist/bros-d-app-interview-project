'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "5d2b16b8fa3c86bb108af11a427c0fd6",
"version.json": "23eba5d3617323b177af56da288bee6b",
"index.html": "a1202086da8dd773f831e95172f45b8b",
"/": "a1202086da8dd773f831e95172f45b8b",
"main.dart.js": "ab190c8f0789d5fea0e4acd28ccd29ba",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "15ee58dcdad3294b0f53a0e9674b7c4d",
"assets/AssetManifest.json": "a09aff3c3021d45664da2f72aa9c679c",
"assets/NOTICES": "4e0c7597046527c264d74e3f8b9223e3",
"assets/FontManifest.json": "d883368e99cbd6383708f0a85a773fe6",
"assets/AssetManifest.bin.json": "bf5bf62564e7bd22b9107d7bca0ef9ad",
"assets/packages/uicons_solid_straight/font/uicons_solid_straight.ttf": "61f1a517a0b28de93154f6f58fed8cfc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/uicons_regular_rounded/font/uicons_regular_rounded.ttf": "fe1a0d4695cd3af92ccb8bebe07b37d0",
"assets/packages/uicons_bold_rounded/font/uicons_bold_rounded.ttf": "57b7148925788147563f064dfaedbf79",
"assets/packages/uicons_solid_rounded/font/uicons_solid_rounded.ttf": "10e61be76e22afc668c28a1ef16496e9",
"assets/packages/uicons_regular_straight/font/uicons_regular_straight.ttf": "02b228a3eb26b1cd618618098f93ee6a",
"assets/packages/uicons_bold_straight/font/uicons_bold_straight.ttf": "ec78a205ff3677b4db23873b9da6b6d1",
"assets/packages/uicons_brands/font/uicons_brands.ttf": "579a47c46f2f8dbd90ea1ac923785f3f",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/lib/images/family_picture.svg": "ddfbfe9260c13d359aefc270baf580fe",
"assets/lib/images/demo_app.svg": "bc2aca43074d36dce061e5895df4493d",
"assets/lib/images/demo_app_mascot.svg": "2f455d8b03c3238d4b4ff70b3722a5e1",
"assets/lib/images/app_demo.png": "0e0e2a938f4fa946727eaf8a86ab9f75",
"assets/lib/images/map.png": "fccae9e3edee875ea20749e357bb7984",
"assets/lib/images/family_picture.png": "aad7b479898e632ebabff373d9c4f6c2",
"assets/lib/images/logos/twitter_logo.svg": "0dcaebffc7fc9f443bce9eec4ed483a9",
"assets/lib/images/logos/bros_d_logo.png": "0524e892a8fe9ee6040fda7eda2c0c5e",
"assets/lib/images/logos/logo_colored.svg": "715cae5939f573eaf2965060860f7fe3",
"assets/lib/images/logos/facebook_logo.svg": "76808384f7e45d87ec6a8d8ec36ae1a4",
"assets/lib/images/logos/youtube_logo.svg": "d33848de4e3bd76fa8e3c9a61e8e7ec9",
"assets/lib/images/logos/instagram_logo.svg": "3f46b6d09403b1ef81452f8c18c14c57",
"assets/lib/images/logos/threads_logo.svg": "187725c25cef786ec4204651efcd8e88",
"assets/lib/images/logos/logo_white.svg": "56005fa96943cbee229bc3d807fed462",
"assets/lib/images/construction_and_building/scaffolding.svg": "e82f23600225daaef9277b2e563e85c7",
"assets/lib/images/construction_and_building/pop_screeding.svg": "4bbd767e6fc67aeccf45ab32ad24aee0",
"assets/lib/images/construction_and_building/welder.svg": "1c04312fd07ff76212d259657898f09a",
"assets/lib/images/construction_and_building/concrete_work.svg": "fb019b84bb8957c461d2703f997e5f25",
"assets/lib/images/construction_and_building/civil_engineering.svg": "0d6f3c44d5799cafa2f285d2614fe672",
"assets/lib/images/construction_and_building/tilers.svg": "910ac77e77f810d7ddf1e9b0ac8a767c",
"assets/lib/images/construction_and_building/carpenters.svg": "06e7e59a1121b109f9d52a25670e53ad",
"assets/lib/images/construction_and_building/plumbers.svg": "b408b3a48411d6f19722a3510b4178db",
"assets/lib/images/construction_and_building/tiles.svg": "75a0b4faf45b78349a8c49702fc750d7",
"assets/lib/images/construction_and_building/bricklayers.svg": "3b1610577212ed37b4a3b2bc03abb5b2",
"assets/lib/images/construction_and_building/painter.svg": "1b17bef405b1ff1c14a4994a19345ff1",
"assets/lib/images/bros_d_app_mascot.svg": "9ad0ca723093d5d4c9b415e3420a367a",
"assets/lib/images/app_demo_mascot.png": "a82df07f08178a5124038aab2a9efb69",
"assets/lib/images/icons/notification.svg": "c1089f4b748d67af3778d105c22b6e2f",
"assets/lib/images/icons/bros_d_search.svg": "f80f7694ff6b6c433a651d868ab0a57b",
"assets/lib/images/icons/dropdown.svg": "a27f30e9281bd20d146709695ee62705",
"assets/lib/images/service_category/cement_guy.svg": "8da00fede7bb3b494df4f1c232552b5f",
"assets/lib/images/service_category/idea_guy.svg": "1c08e764d635342202df387a605efed8",
"assets/lib/images/service_category/cleaning_dude.svg": "d957342ad3af4017ce26bf71b93334ba",
"assets/lib/images/service_category/cleaning_lady.svg": "1b3e64a1430ea20e96aa681b3bdb2598",
"assets/lib/images/service_category/contractor.svg": "989b75dded1395342aa2ee9ea3b0c556",
"assets/lib/images/service_category/young-smiling-business-woman-pointing-calendar-clock%25202.svg": "0f32313a539ac6bcd1d80bb26bf0ea27",
"assets/lib/images/service_category/wood_craftsman.svg": "f34bc73482687357bb76412c9df68a43",
"assets/lib/images/service_category/delivery_rider.svg": "2545d941bdcf971cdb46218a26f3433c",
"assets/lib/images/service_category/jack_hammer_guy.svg": "57f191b713020fc593450023c76465d5",
"assets/lib/images/service_category/tech_guy.svg": "3fafa66d35ad90dbfd9f37795196c9e3",
"assets/lib/images/service_category/electrician.svg": "034460e87357bf6830295469c97b71fe",
"assets/lib/images/service_category/mechanic-replacing-parts-cartoon-style%25201.svg": "266942c2c75ceae29c50550963af64fd",
"assets/lib/images/mascot.png": "91e21a6fb28640de10ed516f2ddcdc07",
"assets/lib/images/Screen.svg": "48f7d9b82573426a78cc17a24e56cdc7",
"assets/AssetManifest.bin": "8edb1a282f96efa74e94f42bfa9f3af1",
"assets/fonts/MaterialIcons-Regular.otf": "e886ef723f52cb7dbd08c5413b60a42c",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
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
