component Main {

  style app {
    @font-face {
      font-family: "Nunito";
      font-style: normal;
      font-weight: 400;
      src: local(""),
        url("/fonts/nunito-v16-latin-regular.woff2") format("woff2");
    }
  }

  fun render : Html {
    <div::app>
      <Logo/>

      <Input />
    </div>
  }
}
