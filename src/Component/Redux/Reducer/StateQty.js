const StateQtyReducer = (state = 0, action) => {
  switch (action.type) {
    case "incre":
      return state+1
    case "click":
      return 0
    default:
      return state;
  }
};
export default StateQtyReducer;
