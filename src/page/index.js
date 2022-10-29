import React from "react";
import { useDispatch, useSelector } from "react-redux";
import { addNewHobby } from "../action/hobby";

function Index(props){
    const hobbyList = useSelector(state => state.hobby.list)
    console.log(hobbyList);
//=>list: [1,2,3]
    const dispatch = useDispatch()

    const handleAddClick=()=>{
        const newHobby = {
            id: 123,
            title: "test"
        }
        //action + gia tri moi
        const action = addNewHobby(newHobby)
        dispatch(action)
    }
    return <button onClick={handleAddClick}>ADD</button>

}
export default Index


