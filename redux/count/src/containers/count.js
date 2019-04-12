import { connect } from 'react-redux'
import { incrementCount, decrementCount } from '../actions'
import Count from '../components/count'

const mapStateToProps = (state) => ({
    count: state.count
})



const mapDispatchToProps = (dispatch) => ({
    increment: () => dispatch(incrementCount()),
    decrement: () => dispatch(decrementCount())
})

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Count)