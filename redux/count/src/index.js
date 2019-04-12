import React from 'react';
import ReactDOM from 'react-dom';
import { createStore } from 'redux'
import { Provider } from 'react-redux'
import reducer from './reducers'
import Count from './containers/count'

const store = createStore(reducer)

ReactDOM.render(
    <Provider store={store}>
        <Count />
    </Provider>,
    document.getElementById('root')
);
