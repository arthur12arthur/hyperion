self.addEventListener('install', event => {
  self.skipWaiting();
});

self.addEventListener('fetch', event => {
  // Stratégie simple : fallback vers offline.html si la requête échoue
  event.respondWith(fetch(event.request).catch(() => caches.match('offline.html')));
});
