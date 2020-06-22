import React from "react";
import { Link } from "react-router-dom";
import Board from "./Board";

class Boards extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      boards: [],
    };
  }

  componentDidMount() {
    const url = "/api/v1/boards/";
    fetch(url)
      .then((response) => {
        if (response.ok) {
          return response.json();
        }
        throw new Error("Network response was not ok.");
      })
      .then((response) => this.setState({ boards: response }))
      .catch(() => this.props.history.push("/"));
  }

  render() {
    const allBoards = this.state.boards.map((board, index) => {
      return <Board board={board} key={index} />;
    });

    const noBoard = (
      <div>
        <h4>
          No boards yet. Why not <Link to="/new_board">create one</Link>
        </h4>
      </div>
    );

    return (
      <>
        <div>
          <main>
            <button>
              <Link className="button" to="/">
                Home
              </Link>
            </button>
            <button>
              <Link className="button" to="/new_board">
                New Board
              </Link>
            </button>
            <div className="row">
              {this.state.boards.length > 0 ? allBoards : noBoard}
            </div>
            <div>{allBoards}</div>
          </main>
        </div>
      </>
    );
  }
}

export default Boards;
