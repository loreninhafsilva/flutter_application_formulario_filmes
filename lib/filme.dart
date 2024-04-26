
class Filme
{
  //atributos
  String _nome = "";
  String _email = "";
  List<bool> _interesses = [];
  String _mvdc = "";
  String _favorito = "";
  bool _notificacoes = false;

  //construtores
  Filme(this._nome, this._email, this._interesses, this._mvdc, this._favorito, this._notificacoes);

  //getters and setters
  get nome => this._nome;

  set nome( value) => this._nome = value;

  get email => this._email;

  set email( value) => this._email = value;

  get interesses => this._interesses;

  set interesses( value) => this._interesses = value;

  get mvdc => this._mvdc;

  set mvdc( value) => this._mvdc = value;

  get favorito => this._favorito;

  set favorito( value) => this._favorito = value;

  get notificacoes => this._notificacoes;

  set notificacoes( value) => this._notificacoes = value;
}