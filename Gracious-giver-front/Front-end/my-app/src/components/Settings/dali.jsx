import React, { useEffect, useState } from 'react';
import Header from '../Header/Header';
import { Footer } from '../footer/Footer';
import axios from 'axios';
import { NotificationManager } from 'react-notifications';
import maleUser from '../../images/maleUser.png'
import femaleUser from '../../images/femaleUser.png'

import { Tab } from 'semantic-ui-react';
import { Tabs } from 'react-bootstrap';
import { useHistory } from 'react-router-dom';

const Dali = () => {

        let history = useHistory();
        const [loggedInUser, setLoggedInUser] = useState([])
        const [states, setStates] = useState([]);
        const [cities, setCities] = useState([]);
        const [selectedState,setSelectedState] = useState()
        const [selectedCity,setSelectedCity] = useState()
        const [selectedRole,setSelectedRole] = useState()
        

        useEffect(() => {(async () => {
            await axios
              .get('http://localhost:5000/api/dali', { withCredentials: true })
              .then((res) => {
                setLoggedInUser(res.data)
              })
          })()
          getDali()
          
        }, [])

        const getDali = async () => {
            try{
              await axios.get('http://localhost:5000/api/dali')
              .then(res=>{
                console.log(res)
                setStates(res.data)
              })
            }
            catch(e){
              console.log(e);
            }
          }
          const getCities = async () => {
            try{
              await axios.get('http://localhost:5000/api/dali')
              .then(res=>{
                console.log(res)
                setCities(res.data)
              })
            }
            catch(e){
              console.log(e);
            }
          }

          const handleSubmit = (event) => {
            event.preventDefault()
                axios.put('http://localhost:5000/api/user/'+ loggedInUser.UserId, {
                UserId: loggedInUser.UserId,
                UserName: event.target.UserName.value,
                Firstname: event.target.Firstname.value,
                Lastname: event.target.Lastname.value,
                UserPassword:loggedInUser.UserPassword,
                UserState: event.target.UserState.value,
                UserCity: event.target.UserCity.value,
                UserPostcode: loggedInUser.UserPostcode,
                UserRole: loggedInUser.UserRole,
                UserEmail: event.target.UserEmail.value,
                UserGender: loggedInUser.UserGender,
                UserDbo: loggedInUser.UserDbo
              })
              
              .then((res) => {
                    NotificationManager.success(
                    'User edited succesfully!',
                    '',
                    2000,
                )
                },
                (error) => {
                    NotificationManager.error(
                    'Error while editing the user!',
                    '',
                    1000,
                    )
                },
              )
        }
          const handlePasswordSubmit = (event) => {
            event.preventDefault()
            const posReq = axios.create({
            withCredentials:true
            })
            posReq.post('http://localhost:5000/api/changepsw/',{
                UserName: loggedInUser.UserName,
                OldPassword: event.target.oldPassword.value,
                NewPassword: event.target.newPassword.value
              })
              
              .then((res) => {
                    history.push("/settings")
                    NotificationManager.success(
                    'Your password has been changed!',
                    '',
                    2000,
                )
                window.location.reload(false);
                },
                (error) => {
                    NotificationManager.error(
                    'Error while changing the password!',
                    '',
                    1000,
                    )
                },
              )
        }
      
      
            return (


                <div class="form-outline p-4" >
                <textarea class="form-control" id="textAreaExample" rows="4" ></textarea>
                <label class="form-label" for="textAreaExample">Message</label>
              </div>
            
    
            )
        }
        export default Dali;