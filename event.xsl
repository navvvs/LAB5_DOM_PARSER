<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">

		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center">User Details</h1>
		<table border="2" align="center">
		<tr>
		<th>email</th>
		<th>name</th>
		<th>id</th>
		<th>gender</th>
		<th>type</th>
		<th>contact</th>
		</tr>
		<xsl:for-each select="ChristUniversity/User">
		<xsl:sort select="U_email"></xsl:sort>
		
		<tr>
		<td>
		<xsl:value-of select="U_email"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="U_name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="U_id"></xsl:value-of>
        </td>
		<td>
		<xsl:value-of select="U_gender"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="U_type"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="U_contact"></xsl:value-of>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		
		<h1 style="text-align:center">Ticket Details</h1>
		<table border="2" align="center">
		<tr>
		<th>Id</th>
		<th>date</th>
		<th>price</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Ticket">
		<xsl:sort select="T_id"></xsl:sort>
		
		<tr>
		<td>
		<xsl:value-of select="T_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="T_date"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="T_price"></xsl:value-of>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		
		<h1 style="text-align:center">Event Details</h1>
		<table border="2" align="center">
		<tr>
		<th>Id</th>
		<th>name</th>
		<th>type</th>
		<th>time</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Event">
		<xsl:sort select="Event_id"></xsl:sort>
		
		<tr>
		<td>
		<xsl:value-of select="Event_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Event_name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Event_type"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Event_time"></xsl:value-of>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		
		<h1 style="text-align:center">Staff Details</h1>
		<table border="2" align="center">
		<tr>
		<th>Event manager id</th>
		<th>Event manager name </th>
		<th>admin id </th>
		<th>admin name</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Staff">
		<xsl:sort select="Event_manager_id"></xsl:sort>
		
		<tr>
		<td>
		<xsl:value-of select="Event_manager_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Event_manager_name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="admin_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="admin_name"></xsl:value-of>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		
		<h1 style="text-align:center">Venue Details</h1>
		<table border="2" align="center">
		<tr>
		<th>Venue id</th>
		<th>Venue name </th>
		<th>Venue status </th>
		</tr>
		<xsl:for-each select="ChristUniversity/Venue">
		<xsl:sort select="Event_manager_id"></xsl:sort>
		
		<tr>
		<td>
		<xsl:value-of select="V_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="V_name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="V_status"></xsl:value-of>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		
		<h1 style="text-align:center">Asset Details</h1>
		<table border="2" align="center">
		<tr>
		<th>Asset id</th>
		<th>Asset type</th>
		<th>Invoice id</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Asset">
		<xsl:sort select="Asset_id"></xsl:sort>
		
		<tr>
		<td>
		<xsl:value-of select="Asset_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Asset_type"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Invoice_id"></xsl:value-of>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>