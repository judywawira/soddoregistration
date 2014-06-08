<%
	ui.decorateWith("appui","standardEmrPage")
    ui.includeJavascript("uicommons", "angular.min.js")
    ui.includeJavascript("uicommons", "angular-ui/ui-bootstrap-tpls-0.6.0.min.js")
    ui.includeJavascript("soddoregistration", "register.js")
<<<<<<< HEAD
%>

<div id="soddo-reg" ng-app="soddoRegistration" ng-resource="soddoRegistrationController" class="form-group">
    <form name = "soddoForm" novalidate>
        <fieldset>
            <legend>Demographics</legend>
            <div>
                <div >
                    <p> First Name: </p> <p><input name="fname" type="text" ng-model='registration.firstName' required>
                    <span ng-show="soddoForm.fname.$invalid"><small><i>*Required Field</i></small></span>
                </p>
                </div>
                <div>
                    <p> Middle Name:</p> <p>  <input type="text" ng-model='registration.middleName'>
                </p>
                </div>
                <p>Last Name:  </p> <p><input name="lname" type="text" ng-model='registration.lastName' required>
                <span ng-show="soddoForm.lname.$invalid"><small><i>*Required Field</i></small></span> </p>
            </div>
            <div>
                <div>
                    <p> Father's Name: </p> <p> <input name="fathersname" type="text" ng-model='registration.fathersName' required>
                    <span ng-show="soddoForm.fathersname.$invalid"><small><i>*Required Field</i></small></span>
                </p>
                </div>
                <div>
                    <p>GrandFather's Name: </p> <p> <input name="gname" type="text" ng-model='registration.grandFathersName' required>
                    <span ng-show="soddoForm.gname.$invalid"><small><i>*Required Field</i></small></span>
                </p>
                </div>
            </div>
            <p>Gender </p> <p> <input type="radio" name="gender" ng-model='registration.gender' value='Male' required> Male</p>
            <p> <input type="radio" name="gender" ng-model='registration.gender' value='Female' required> Female</p>
            <span ng-show="soddoForm.gender.$invalid"><small><i>*required</i></small></span>

            <fieldset>
                <p>BirthDate </p> <p> <input type="radio" name="DOB" ng-model='registration.exactOrEstimate' value='exact'> Exact</p>
                <p> <input type="radio" name="DOB" ng-model='registration.exactOrEstimate' value='estimated'> Estimated</p>
                <p> <datepicker ng-model='registration.DOB'></datepicker></p>
                <p> <input type="checkbox" ng-model='registration.ethiopian'> Ethiopian Calendar: </p>
            </fieldset>

            <p> <input type="checkbox" ng-model='registration.dead'> Dead: </p>

        </fieldset>
        <div>

            <fieldset>
                <legend>Address</legend>
                <div>
                    <div>
                        <p>Region: </p> <p> <input name="region" type="text" ng-model='registration.region' required>
                        <span ng-show="soddoForm.region.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                    <div>
                        <p>Woreda: </p> <p> <input name="woreda" type="text" ng-model='registration.woreda' required>
                        <span ng-show="soddoForm.woreda.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                    <div>
                        <p>Ketena/Gott: </p> <p> <input name="ketena" type="text" ng-model='registration.ketena' required>
                        <span ng-show="soddoForm.ketena.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                    <div>
                        <p>Zone/Special Woreda: </p> <p> <input name="zone" type="text" ng-model='registration.zone' required>
                        <span ng-show="soddoForm.zone.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                </div>
                <div>
                    <div>
                        <p>Kebele: </p> <p> <input name="kebele" type="text" ng-model='registration.kebele' required>
                        <span ng-show ="soddoForm.kebele.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                    <div>
                        <p>Subcity: </p> <p> <input name="subcity" type="text" ng-model='registration.subcity' required>
                        <span ng-show ="soddoForm.subcity.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                    <div>
                        <p>Telephone: </p> <p> <input name="tel" type="text" ng-model='registration.tel' required>
                        <span ng-show ="soddoForm.tel.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                </div>
            </fieldset>
        </div>

        <input class='btn btn-primary' type="submit" ng-click ="form.$valid && makepayloads()" value="Save Patient" />

        {{registration}}
        <hr>
        {{personpayload}}
        <br>
        {{soddoForm.$valid}}
    </form>
</div>
=======
    ui.includeCss("soddoregistration", "bootstrap.min.css")
    
%>
<form name="soddoForm" novalidate>
    <div id="soddo-reg" ng-app="soddoRegistration" ng-resource="soddoRegistrationController"  class="form-group">
        <fieldset class="well">
            <legend>Demographics</legend>
            <table>
                <tr>
                    <td valign="top"><label>First Name</label><br>
                        <span><input type="text" ng-model='registration.firstName' style="width: 260px"></span>
                    </td>
                    <td valign="top"><label>Middle Name</label><br>
                        <span><input type="text" ng-model='registration.middleName' style="width: 260px"></span>
                    </td>
                    <td valign="top"><label>Last Name</label><br>
                        <span><input type="text" ng-model='registration.lastName' style="width: 260px"></span>
                    </td>
                </tr>
                <tr>
                    <td><label> Father's Name:</label><br>
                        <span><input type="text" ng-model='registration.fathersName' style="width: 260px"></span>
                    </td>
                    <td><label>GrandFather's Name</label> <br>
                        <span> <input type="text" ng-model='registration.grandFathersName' style="width: 260px"> </span>
                    </td>
                </tr>
            </table>
            <p>Gender </p> <p> <input type="radio" name="gender" ng-model='registration.gender' value='Male'> Male</p>
            <p> <input type="radio" name="gender" ng-model='registration.gender' value='Female'> Female</p>

            <p>BirthDate </p> <p> <input type="radio" name="DOB" ng-model='registration.exactOrEstimate' value='exact'> Exact</p>
            <p> <input type="radio" name="DOB" ng-model='registration.exactOrEstimate' value='estimated'> Estimated</p>
            <p> <datepicker ng-model='registration.DOB'></datepicker></p>
            <p> <input type="checkbox" ng-model='registration.ethiopian'> Ethiopian Calendar: </p>

            <p> <input type="checkbox" ng-model='registration.dead'> Dead: </p>
        </fieldset>

        <div class = "row-fluid ng-scope">
            <fieldset class="well">
                <legend>Address</legend>
                <table>
                    <tr>
                        <td><label>Region</label><br>
                            <span> <input type="text" ng-model='registration.region' style="width: 260px"> </span>
                        </td>
                        <td><label>Woreda</label> <br>
                            <span> <input type="text" ng-model='registration.woreda' style="width: 260px"> </span>
                        </td>
                        <td><label>Ketena/Gott</label> <br>
                            <span> <input type="text" ng-model='registration.ketena' style="width: 260px"> </span>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Zone/Special Woreda: </label> <br>
                            <span> <input type="text" ng-model='registration.zone' style="width: 260px"> </span>
                        </td>
                        <td><label>Kebele: </label><br>
                            <span> <input type="text" ng-model='registration.kebele' style="width: 260px"> </span>
                        </td>
                        <td><label>Subcity</label> <br>
                            <span> <input type="text" ng-model='registration.subcity' style="width: 260px"> </span>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Telephone: </label> <br>
                            <span> <input type="text" ng-model='registration.tel' style="width: 260px"> </span>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>

        <input class='btn btn-primary' type="submit" ng-click ="makepayloads()" value="Save Patient"/>

        {{registration}}
        <hr>
        {{personpayload}}

    </div>
</form>
>>>>>>> e4f5116
