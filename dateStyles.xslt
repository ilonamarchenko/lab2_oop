<!-- schedule.xsl -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<style>
					table {
					border-collapse: collapse;
					width: 100%;
					}
					th, td {
					border: 1px solid #dddddd;
					text-align: left;
					padding: 8px;
					}
					th {
					background-color: #f2f2f2;
					}
				</style>
			</head>
			<body>
				<h2>Schedule</h2>
				<table>
					<tr>
						<th>Name</th>
						<th>Department</th>
						<th>Chair</th>
						<th>Room</th>
						<th>Students</th>
						<th>Lectures</th>
					</tr>
					<xsl:apply-templates select="ScheduleDataBase/teacher"/>
				</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="teacher">
		<tr>
			<td>
				<xsl:value-of select="name"/>
			</td>
			<td>
				<xsl:value-of select="department"/>
			</td>
			<td>
				<xsl:value-of select="chair"/>
			</td>
			<td>
				<xsl:value-of select="room"/>
			</td>
			<td>
				<xsl:value-of select="students"/>
			</td>
			<td>
				<xsl:value-of select="lectures"/>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>
