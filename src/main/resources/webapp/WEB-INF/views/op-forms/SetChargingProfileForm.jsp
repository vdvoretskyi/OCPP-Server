
<form:form action="${ctxPath}/manager/operations/${opVersion}/SetChargingProfile" modelAttribute="params">
    <section><span>Charge Points with OCPP ${opVersion}</span></section>
    <%@ include file="../00-cp-multiple.jsp" %>
    <section><span>Parameters</span></section>
    <table class="userInput">
        <tr>
            <td>Charging Profile ID:</td>
            <td><form:select path="chargingProfilePk">
                <form:options items="${profileList}" itemLabel="itemDescription" itemValue="chargingProfilePk"/>
            </form:select>
            </td>
        </tr>
        <tr>
            <td>Connector ID (integer):</td>
            <td><form:input path="connectorId" placeholder="0 = charge point as a whole"/></td>
        </tr>
        <tr><td></td><td><div class="submit-button"><input type="submit" value="Perform"></div></td></tr>
    </table>
</form:form>