import React from 'react'
import PropTypes from 'prop-types'

const Count = ({ count, increment, decrement }) => (
    <div>
        <button onClick={decrement}>-</button>
        <span>{count}</span>
        <button onClick={increment}>+</button>
    </div>
)

Count.prototype = {
    count: PropTypes.number.isRequired,
    increment: PropTypes.func.isRequired,
    decrement: PropTypes.func.isRequired
}

export default Count