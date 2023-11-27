
<form:form action="${ctxPath}/manager/operations/${opVersion}/GetConfiguration" modelAttribute="params">
    <section><span>Charge Points with OCPP ${opVersion}</span></section>
    <%@ include file="../00-cp-multiple.jsp" %>
    <section><span>Parameters</span></section>
    <table class="userInput">
        <tr><td style="vertical-align:top"><input type="button" value="Select All" onClick="selectAll(document.getElementById('confKeyList'))"><input type="button" value="Select None" onClick="selectNone(document.getElementById('confKeyList'))">
            <div class="info"><b>Info:</b> If none selected, the charge point returns a list of <b>all</b> configuration settings.</div>
        </td>
            <td>
                <form:select path="confKeyList" multiple="true" size="14" >
                    <c:forEach items="${ocppConfKeys}" var="k">
                    <option value="${k.getKey()}" label="${k.getValue()}" title="${k.getValue()}">
                    </c:forEach>
                </form:select>
            </td>
        </tr>
        <tr><td>Custom Configuration Keys:</td><td><form:input path="commaSeparatedCustomConfKeys" placeholder="optional comma separated list" /></td></tr>
        <tr><td></td><td><div class="submit-button"><input type="submit" value="Perform"></div></td></tr>
    </table>
</form:form>