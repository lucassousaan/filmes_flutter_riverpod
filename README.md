# Movie App Riverpod

Aplicativo de filmes desenvolvido em Flutter, utilizando Clean Architecture, Riverpod para gerenciamento de estado e a API do The Movie Database (TMDb).

Este projeto foi criado para fins de estudo, aplicando conceitos avançados de desenvolvimento mobile.

## 🚀 Começando

Para rodar este projeto localmente, siga os passos abaixo.

### Pré-requisitos

-   [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado.
-   Uma [chave de API do TMDb](https://www.themoviedb.org/settings/api).

### Instalação e Execução

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/lucassousaan/filmes_flutter_riverpod.git](https://github.com/lucassousaan/filmes_flutter_riverpod.git)
    cd filmes_flutter_riverpod
    ```

2.  **Crie o arquivo de segredos:**
    Na raiz do projeto, crie um arquivo chamado `.env` e adicione sua chave da API do TMDb nele:
    ```
    API_KEY=SUA_CHAVE_DA_API_AQUI
    ```

3.  **Instale as dependências:**
    ```bash
    flutter pub get
    ```

4.  **Gere os arquivos de código:**
    Este projeto utiliza `build_runner` para gerar arquivos necessários. Execute o comando abaixo.
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

5.  **Execute o aplicativo:**
    ```bash
    flutter run
    ```
