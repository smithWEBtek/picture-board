import React from "react";
import { Link } from "react-router-dom";

export default () => (
  <div className="layout-wrapper ">
    <div className="main-header">
      <div className="main-header__title">Picture Boards</div>
      <div className="main-header__subtitle">
        Picture Boards for special needs communication.
      </div>
      <div className="main-nav">
        <button>
          <Link className="main-nav__link" to="/" role="button">
            Home
          </Link>
        </button>
        <button>
          <Link className="main-nav__link" to="/boards" role="button">
            View Boards
          </Link>
        </button>
        <button>
          <Link className="main-nav__link" to="/new_board" role="button">
            Create Board
          </Link>
        </button>
      </div>
    </div>

    <section className="section">
      <div className="section__title">You can: </div>
      <div className="section__content">
        <ul>
          <li>Create PictureBoards with custom Items</li>
          <li>Use any image, name and describe as you wish.</li>
          <li>Any Item can be included in any Board.</li>
          <li>Print PictureBoards for portable use.</li>
        </ul>
      </div>
    </section>
  </div>
);
