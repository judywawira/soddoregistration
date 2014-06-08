<%
	ui.decorateWith("appui","standardEmrPage")
    ui.includeJavascript("uicommons", "angular.min.js")
    ui.includeJavascript("uicommons", "angular-ui/ui-bootstrap-tpls-0.6.0.min.js")
    ui.includeJavascript("soddoregistration", "register.js")
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