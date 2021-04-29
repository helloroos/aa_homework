import React from 'react'; // React <-- our own naming convention
import ReactDOM from 'react-dom';

import Calculator from './calculator';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<Calculator />, document.getElementById('main'));
  // console.log(main) // undefined

  // Vanilla JS
  // const hello = React.createElement('hi', null, ["hello from react"])

  // Other way of doing it
  // const main = document.getElementById('main');
  // const hello = <h1>Hello from React</h1>;
  // ReactDOM.render(hello, main);
});

