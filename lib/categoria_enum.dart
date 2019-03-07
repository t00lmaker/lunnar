import 'package:flutter/material.dart';
import 'dart:core';
import './categoria.dart';

class CategoriaEnum {
  static const Categoria LOVE = const Categoria(
      "love", "Te amo por isso", Icons.favorite, Colors.pinkAccent);

  static const Categoria REMEMBER = const Categoria(
      "remember", "Lembrei de você", Icons.add_alert, Colors.teal);

  static const Categoria QUOTE = const Categoria(
      "quote", "Só queria te dizer", Icons.format_quote, Colors.blue);

  static const Categoria IDEIA = const Categoria(
      "ideia", "Nós poderiamos", Icons.lightbulb_outline, Colors.deepPurple);

  static const Categoria ALERT = const Categoria(
      "alert", "Comportamento Suspeito", Icons.announcement, Colors.amber);

  static const Categoria ERROR = const Categoria(
      "error", "Pisou na Bola", Icons.block, Colors.deepOrangeAccent);

  static const Categoria HATE =
      const Categoria("hate", "Odeio quando", Icons.delete_forever, Colors.red);

  static get values => [LOVE, REMEMBER, QUOTE, IDEIA, ALERT, ERROR, HATE];

  CategoriaEnum._();
}
