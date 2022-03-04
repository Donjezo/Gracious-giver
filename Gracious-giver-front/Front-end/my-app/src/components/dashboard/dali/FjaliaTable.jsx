import axios from 'axios';
import React, { useEffect, useMemo, useState } from 'react'
import { Button, Col, Container, Form, Row, Table } from 'react-bootstrap';
import AddFjalia from './AddFjalia'
import EditFjalia from './EditFjalia'
import DeleteFjalia from './DeleteFjalia'
import { Search } from '../DataTable/Search';



const FjaliaTable = () => { 
 
    const [Fjalia, setFjalia] = useState([]);
    const [allFjalia, setAllFjalia] = useState([]);
    const [addFjaliaModal,setAddFjaliaModal] = useState(false);
    const [editFjaliaModal,setEditFjaliaModal] = useState(false);
    const [deleteFjaliaModal,setDeleteFjaliaModal] = useState(false);
    const [FjaliaV, setFjaliaV] = useState([]);
    const [FjaliaD, setFjaliaD] = useState();
    const [search,setSearch] = useState("");
    const [maxFjaliahow, setMaxFjaliahow] = useState(10);


        useEffect(()=>{
            getAmOfFjalia(maxFjaliahow);
            getAllFjalia(); 
        },[maxFjaliahow,addFjaliaModal,editFjaliaModal,deleteFjaliaModal]);
        
        const getAmOfFjalia = async (maxFjaliahow) =>{
            try{
              await axios.get("http://localhost:5000/api/Fjalia/amount/" + maxFjaliahow)
              .then(res=>{
                  setFjalia(res.data)
              })  
            }
            catch(e){
                console.log(e);
            }
        }

        const getAllFjalia = async () => {
            try{ 
            await axios.get(`http://localhost:5000/api/Fjalia`)
            .then(res=>{
                console.log(res.data)
                setAllFjalia(res.data)
            })
            }
            catch(e){
                console.log(e);
            }
        }

        const FjaliaData = useMemo ( ()=>{
            let computedFjalia = Fjalia;
    
            if(search){
                computedFjalia=computedFjalia.filter(
                    Fjalia =>
                        Fjalia.FjaliaName.toLowerCase().includes(search.toLowerCase())
                )
            }
            return computedFjalia
    
        },[Fjalia,search])

        
    return (
        <div>
        <Container className="container-xl">
            <Table className="table-responsive">
                <div className="table-wrapper">
                    <div className="table-title">
                        <Row className="row">
                            <Col className="col-sm-3">
                                <h2><b>Fjalia</b></h2>
                            </Col>
                            <Col className ="col-sm-6 d-flex justify-content-end">
                                 <span className="showing-res-txt">Showing {FjaliaData.length} of {allFjalia.length} entries</span>
                                 <Search
                                    onSearch={(value)=>{
                                        setSearch(value);
                                    }}
                                    style ={{float:"right", width:"200px"}}
                                 />
                                 <Form.Control
                                    name = "ShowAmOfFjalia"
                                    as="select" 
                                    custom
                                    style={{width:"80px",marginLeft:"3px"}}
                                    onChange={e=>
                                        {
                                            e.target.value==='All'?setMaxFjaliahow(allFjalia.length):setMaxFjaliahow(e.target.value);
                                        }
                                    }
                                    >
                                        <option value="10">10</option>
                                        <option value="20">20</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                        <option value="All">All</option>
                                 </Form.Control>
                            </Col>
                            <Col className="col-sm-3">
                          
                                <Button 
                                onClick={() => setAddFjaliaModal(true)} 
                                className="btn btn-success" 
                                variant ="success"
                                data-toggle="modal"><i className="material-icons">&#xE147;</i> <span>Add New Fjalia</span>
                                </Button>					
                            </Col>
                        </Row>
                    </div>
                    <Table striped bordered hover>
                        <thead>
                            <tr>
                                <th>Nr.</th>
                                <th>Fjalia Name</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            {FjaliaData.map((Fjalia,i)=>(
                                <tr>
                                <td>#{++i}</td>
                                <td>{Fjalia.FjaliaName}</td>
                                <td>
                                    <Button 
                                    onClick={() => 
                                        {setEditFjaliaModal(true);
                                            setFjaliaV(Fjalia)
                                        } }
                                    className="m-2" 
                                    variant ="warning" 
                                    data-toggle="modal"><i className="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                                    </Button>
                                    
                                    <Button 
                                    onClick={() => 
                                        {setDeleteFjaliaModal(true);
                                            setFjaliaD(Fjalia.FjaliaId)
                                        }} 
                                     className="delete" 
                                     variant ="danger"
                                     data-toggle="modal"><i className="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                                     </Button>
                                </td>
                            </tr>
                            ))}
                        </tbody>
                    </Table>
                          
                </div>
            </Table>  

        </Container>
        <EditFjalia
         show={editFjaliaModal}
         onHide={() => setEditFjaliaModal(false)}
         onUpdate={()=>{
            getAllFjalia();
            setEditFjaliaModal(false)
            getAmOfFjalia(maxFjaliahow);
        } }
         Fjalia={FjaliaV}
         />
        <AddFjalia
        show={addFjaliaModal}
        onHide={() => setAddFjaliaModal(false)}
        onUpdate={()=>{
            getAllFjalia();
            setAddFjaliaModal(false)
            getAmOfFjalia(maxFjaliahow);
        } }
        />

        <DeleteFjalia
        show={deleteFjaliaModal}
        onHide={() => setDeleteFjaliaModal(false)} 
        onUpdate={()=>{
            getAllFjalia();
            setDeleteFjaliaModal(false)
            getAmOfFjalia(maxFjaliahow);
        } }
        FjaliaId={FjaliaD}
        />
    </div>
    )
}

export default FjaliaTable