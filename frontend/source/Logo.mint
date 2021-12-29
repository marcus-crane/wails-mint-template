component Logo {
  style logo {
    display: block;
    width: 35%;
    height: 35%;
    margin: auto;
    padding: 15% 0 0;
    background-position: center;
    background-repeat: no-repeat;
    background-image: url("/images/logo-dark.svg");
  }

  fun render : Html {
    <div::logo></div>
  }
}
