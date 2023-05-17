## INICIANDO UM PROJETO FLUTTER

- É uma boa pratica criar duas pastas, developer e production. Ao realizar isso, criar o projeto na pasta developer.

- No Terminal, digitar <b>flutter create (nome do projeto) </b>. Com esse comando, serão criadas todas as estruturas e pastas do projeto. 

## PASTAS DE PROJETO

- As pastas criadas ao iniciar o projeto são advindas do setup inicial do flutter create. <b>As ÚNICAS PASTAS QUE, INICIALMENTE, NOS PREOCUPAREMOS EM EXPLORAR, SERA LIB PARA CODAR E TEST PARA TESTES DE UNIDADE.</b>
- Na LIB colocaremos todos os códigos. Na pasta WEB, não mexeremos mas ela vai construir o flutter web. O mesmo vale para a pasta windows, ios, android(que possui um projeto nativo - roda como se tivesse feito em java, kotlin, entre outros), entre outros. 
- A pasta BUILD é para onde vai todos os binarios, as coisas construidas. O APK aparece lá. Caminho: Build -> Outputs -> Flutter Apk -> (encontrar o apk desejado). 
- Analysis_options.yaml vai ser útil para Mexer nos Lints do projeto.
- Pubspec.lock e Pubspec.yaml são utilizados para lidar com dependencias externas 

## HOT RELOAD

- Ao alterar o código, ele vai refletir automaticamente a mudança. É simbolizado pelo "raio" na regua de açoes no vscode.

## ESTRUTURA DA MAIN.DART

- O Import será responsavel por importas as libs
- É possível utilizar bibliotecas públicas
- O Material.dart são todos os elementos gráficos e de design que utilizaremos no projeto. O "CSS"
- O runApp dentro do void main vai rodar um aplicativo, a estrutura base é: runApp(MyApp()); Myapp é o aplicativo em si.

## WIDGET

- É uma ferramenta. Tudo no flutter é modular, então tudo construído no flutter é um widget. 
