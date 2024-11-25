// Todo lo que está en la capa domain
// tiene que ser código puro de dart
// por ej: no vamos a colocar widgets.

enum FromWho { me, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });
}
