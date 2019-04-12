let initState = {
    count: 1
}
const counta = (state = initState, action) => {
    switch (action.type) {
        case 'INCREMENT_COUNT':
            return {
                ...state,
                count: state.count + 1
            }
        case 'DECREMENT_COUNT':
            return {
                ...state,
                count: state.count - 1
            }
        default:
            return state
    }
}
export default counta