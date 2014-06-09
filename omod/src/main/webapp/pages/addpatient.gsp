   <%
    	ui.decorateWith("appui","standardEmrPage")
        ui.includeJavascript("uicommons", "angular.min.js")
        ui.includeJavascript("uicommons", "angular-ui/ui-bootstrap-tpls-0.6.0.min.js")   
        ui.includeJavascript("soddoregistration", "register.js")
        ui.includeJavascript("soddoregistration", "registerValidation.js")
    %>

   <div id="soddo-reg" ng-app="soddoRegistration" ng-resource="soddoRegistrationController" class="form-group">
       <form name="soddoReg">
           <fieldset class="well">
               <legend>Register New Patient</legend>
               <table class="table" border='0'>
                   <tr>
                       <td>
                           <label>Patient Identifier:</label> <br>
                           <span><input type="text" ng-model='registration.identifier' style="width: 260px"></span>
                       </td>
                       <td>
                           <input type='button' value='Generate ID'  style="width: 260px" ng-click='generateID()'>
                       </td>
                       <td>
                           <div ng-show='generatedID'> </div>
                       </td>
                   </tr>
                   <tr>
                       <td><label>First Name:</label><br>
                           <span><input name="fname" type="text" ng-model='registration.firstName' style="width: 260px" onblur="isFnameValid()"></span>
                           <span id="fname_error"></span>
                       </td>
                       <td><label>Middle Name:</label><br>
                           <span><input name="mname" type="text" ng-model='registration.middleName' style="width: 260px" onblur="isMnameValid()"></span>
                           <span id="mname_error"></span>
                       </td>
                       <td ><label>Last Name:</label><br>
                           <span><input name="lname" type="text" ng-model='registration.lastName' style="width: 260px" onblur="isLnameValid()"></span>
                           <span id="lname_error"></span>
                       </td>
                   </tr>


                   <tr>
                       <td><label> Father's Name:</label><br>
                           <span><input name="fthname" type="text" ng-model='registration.fathersName' style="width: 260px" onblur="isFthnameValid()"></span>
                           <span id="fthname_error"></span>
                       </td>
                       <td><label>GrandFather's Name</label> <br>
                           <span> <input name="gname" type="text" ng-model='registration.grandFathersName' style="width: 260px" onblur="isGnameValid()"> </span>
                           <span id="gname_error"></span>
                       </td>
                       <td>
                           <label>Telephone: </label> <br>
                           <span> <input name="tel" type="text" ng-model='registration.tel' style="width: 260px" onblur="isTelValid()"> </span>
                           <span id="tel_error"></span>

                       </td>
                   </tr>

                   <tr>
                       <td>
                           <p>Gender </p> <p> <input type="radio" name="gender" ng-model='registration.gender' value='Male' onblur="isGenderValid()"> Male</p>
                           <p> <input type="radio" name="gender" ng-model='registration.gender' value='Female' onblur="isGenderValid()"> Female</p>
                           <span id="gender_error"></span>
                       </td>

                       <td>

                           <p>BirthDate </p> <p> <input type="radio" name="DOB" ng-model='registration.exactOrEstimate' value='exact'> Exact</p>
                           <p> <input type="radio" name="DOB" ng-model='registration.exactOrEstimate' value='estimated'> Estimated</p>
                           <p> <input type="date" class="form-control"  ng-model='registration.DOB'></p>
                           <p> <input type="checkbox" ng-model='registration.ethiopian'> Ethiopian Calendar: </p>

                       </td>

                       <td>
                           <p> <input type="checkbox" ng-model='registration.dead'> Dead: </p>

                       </td>
                   </tr>

                   <tr>
                       <td><label>Region</label><br>
                           <span> <input name="region" type="text" ng-model='registration.region' style="width: 260px" onblur="isRegionValid()"> </span>
                           <span id="region_error"></span>
                       </td>
                       <td><label>Woreda</label> <br>
                           <span> <input name="woreda" type="text" ng-model='registration.woreda' style="width: 260px" onblur="isWoredaValid()"> </span>
                           <span id="woreda_error"></span>
                       </td>
                       <td><label>Ketena/Gott</label> <br>
                           <span> <input name="ketena" type="text" ng-model='registration.ketena' style="width: 260px" onblur="isKetenaValid()"> </span>
                           <span id="ketena_error"></span>
                       </td>
                   </tr>
                   <tr>
                       <td><label>Zone/Special Woreda: </label> <br>
                           <span> <input name="zone" type="text" ng-model='registration.zone' style="width: 260px" onblur="isZoneValid()"> </span>
                           <span id="zone_error"></span>
                       </td>
                       <td><label>Kebele: </label><br>
                           <span> <input name="kebele" type="text" ng-model='registration.kebele' style="width: 260px" onblur="isKebeleValid()"> </span>
                           <span id="kebele_error"></span>
                       </td>
                       <td><label>Subcity</label> <br>
                           <span> <input name="subcity" type="text" ng-model='registration.subcity' style="width: 260px" onblur="isSubcityValid()"> </span>
                           <span id="subcity_error"></span>
                       </td>
                   </tr>

               </table>
           </fieldset>

           <input class='btn btn-primary' type="submit" ng-click ="makepayloads()" onclick="validate()" value="Save Patient"/>

           <br>
           {{registration}}
           <hr>
           {{payload}}

           {{concept}}
       </form>
   </div>