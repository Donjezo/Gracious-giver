import React from 'react'
import axios from 'axios';
import { Form, FormGroup, Modal } from 'react-bootstrap'
import { NotificationManager } from 'react-notifications'

const EditFjalia = ({show,onHide,Fjalia,onUpdate}) => {

    const handleSubmit = (event) => {
        event.preventDefault();
        axios.put('http://localhost:5000/api/Fjalia/'+ Fjalia.FjaliaId, {
            FjaliaId: Fjalia.FjaliaId,
            FjaliaName: event.target.FjaliaName.value,
            
          })
          .then(()=>{
            onUpdate();
        })
          .then((res) => {
            NotificationManager.success(
            'Fjalia edited succesfully!',
            '',
            2000,
            )
        },
            (error) => {
                NotificationManager.success(
                'Error while editing the Fjalia!',
                '',
                1000,
                )
            },
          )
    }
    return (
        <div>
            <Modal 
            show={show} 
            className="modal fade">
            <div className="modal-dialog">
                <div className="modal-content">
                    <Form onSubmit={handleSubmit}>
                        <div className="modal-header">						
                            <h3 className="modal-title">Edit Fjalia</h3>
                    </div>
                        <div className="modal-body">	
                            <FormGroup className="form-group">
                                <label>Id</label>
                                <input defaultValue={Fjalia.FjaliaId} type="text" className="form-control" required disabled/>
                            </FormGroup>					
                            <FormGroup className="form-group">
                                <label>Name</label>
                                <input 
                                name="FjaliaName"
                                defaultValue={Fjalia.FjaliaName} 
                                type="text" 
                                className="form-control"
                                 required/>
                            </FormGroup>			
                        </div>
                        <Modal.Footer className="modal-footer">
                            <input 
                            onClick={onHide}
                            type="button" className="btn btn-light" data-dismiss="modal" value="Cancel"/>
                            <input 
                            onClick={onHide}
                            type="submit" 
                            className="btn btn-info" 
                            value="Save"/>
                        </Modal.Footer>
                    </Form>
                </div>
            </div>
        </Modal>
        </div>
    )
}

export default EditFjalia
