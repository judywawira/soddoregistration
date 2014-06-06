<%
	ui.decorateWith("appui","standardEmrPage")
    ui.includeJavascript("uicommons", "angular.min.js")
    ui.includeJavascript("uicommons", "angular-ui/ui-bootstrap-tpls-0.6.0.min.js")
    ui.includeJavascript("soddoregistration", "register.js")
    
%>

<div id="soddo-reg" ng-app="soddoRegistration" ng-resource="soddoRegistrationController"  class="form-group">
    <form name = "soddoForm" novalidate>
        <fieldset class="well-sm">
            <legend>Demographics</legend>
            <div class="row">
                <div class="col-md-4">
                    <p> First Name: </p> <p><input name="fname" type="text" ng-model='registration.firstName' required>
                    <span ng-show="soddoForm.fname.$invalid"><small><i>*Required Field</i></small></span>
                </p>
                </div>
                <div class="col-md-4">
                    <p> Middle Name:</p> <p>  <input type="text" ng-model='registration.middleName'>
                </p>
                </div>
                <p>Last Name:  </p> <p><input name="lname" type="text" ng-model='registration.lastName' required>
                <span ng-show="soddoForm.lname.$invalid"><small><i>*Required Field</i></small></span> </p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <p> Father's Name: </p> <p> <input name="fathersname" type="text" ng-model='registration.fathersName' required>
                    <span ng-show="soddoForm.fathersname.$invalid"><small><i>*Required Field</i></small></span>
                </p>
                </div>
                <div class="col-md-4">
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
        <div class = "row-fluid ng-scope">

            <fieldset class="well-sm">
                <legend>Address</legend>
                <div class="row">
                    <div class="col-md-4">
                        <p>Region: </p> <p> <input name="region" type="text" ng-model='registration.region' required>
                        <span ng-show="soddoForm.region.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                    <div class="col-md-4">
                        <p>Woreda: </p> <p> <input name="woreda" type="text" ng-model='registration.woreda' required>
                        <span ng-show="soddoForm.woreda.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                    <div class="col-md-4">
                        <p>Ketena/Gott: </p> <p> <input name="ketena" type="text" ng-model='registration.ketena' required>
                        <span ng-show="soddoForm.ketena.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                    <div class="col-md-4">
                        <p>Zone/Special Woreda: </p> <p> <input name="zone" type="text" ng-model='registration.zone' required>
                        <span ng-show="soddoForm.zone.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <p>Kebele: </p> <p> <input name="kebele" type="text" ng-model='registration.kebele' required>
                        <span ng-show ="soddoForm.kebele.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                    <div class="col-md-4">
                        <p>Subcity: </p> <p> <input name="subcity" type="text" ng-model='registration.subcity' required>
                        <span ng-show ="soddoForm.subcity.$invalid"><small><i>*required</i></small></span>
                    </p>
                    </div>
                    <div class="col-md-4">
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