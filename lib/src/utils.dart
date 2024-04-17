String? getIdFromVideoUrl(String url) {
  try {
    final uri = Uri.parse(url);
    if (uri.host != 'vimeo.com') return null;
    if (int.tryParse(uri.pathSegments.first) == null) return null;
    return uri.pathSegments.first;
  } catch (e) {
    return null;
  }
}