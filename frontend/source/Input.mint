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

  state greeting : String = "Please enter your name below 👇"

  fun greet : Promise(Never, Void) {
    case (input) {
      Maybe::Just(element) =>
        sequence {
          Dom.focusWhenVisible(element)
          name = Dom.getValue(element)
          greeting = `window.go.main.App.Greet(name)`
          next { greeting = greeting }
        } catch String => error {
          sequence {
            Debug.log(error)
            next { }
          }
        }

      Maybe::Nothing => next {}
    }
  }

  fun render : Html {
    <div data-wails-no-drag="true">
      <div::result><{ greeting }></div>
      <input::input as input></input>
      <button::button onClick={greet}>"Greet"</button>
    </div>
  }
}
