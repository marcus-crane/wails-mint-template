component Input {
  style result {
    height: 20px;
    line-height: 20px;
    margin: 1.5rem auto;
  }

  style button {
    width: 60px;
    height: 30px;
    line-height: 30px;
    border-radius: 3px;
    border: none;
    margin: 0 0 0 20px;
    padding: 0 8px;
    cursor: pointer;

    &:hover {
      background-image: linear-gradient(to top, #cfd9df 0%, #e2ebf0 100%);
      color: #333333;
    }
  }

  style input {
    border: none;
    border-radius: 3px;
    outline: none;
    height: 30px;
    line-height: 30px;
    padding: 0 10px;
    background-color: rgba(240, 240, 240, 1);
    -webkit-font-smoothing: antialiased;

    &:hover {
      border: none;
      background-color: rgba(255, 255, 255, 1);
    }

    &:focus {
      border: none;
      background-color: rgba(255, 255, 255, 1);
    }
  }

  state name : String = "User"

  fun render : Html {
    <div data-wails-no-drag="true">
      <div::result>"Please enter your name below 👇"</div>
      <input::input as input><{ name }></input>
      <button::button >"Greet"</button>
    </div>
  }
}
