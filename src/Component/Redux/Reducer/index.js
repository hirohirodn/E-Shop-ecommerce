import { combineReducers } from "redux";
import StateQtyReducer from "./StateQty";
const rootReducer = combineReducers({
  StateQty: StateQtyReducer,
});

export default rootReducer;
