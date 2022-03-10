void main() {
  // Tipagem de Arrays List <tipo do array>
  List<String> nomes = ['Joao Victor', 'Joao Guilherme', 'Lucas'];
  // Adicionando Strings ao Array nomes
  nomes.add("Anna Laura");
  nomes.add("Claudiano");

  print(nomes.length);
  // Acessando posicao dos arrays
  print(nomes[0]);

  // Removendo item do Array através do proprio elemento
  nomes.remove("Joao Guilherme");

  // Removendo item do Array através da sua posicao.
  nomes.removeAt(3);

  print(nomes);
}
