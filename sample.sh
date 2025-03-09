#!/bin/bash

title="System Information Report for $HOSTNAME"
ts="$(date)"

report_disk_space () {
cat << EOF
<h2>Storage Utilization</h2>
<pre>$(df -h)</pre>
<h2>By user</h2>
<pre>$(du)</pre>
EOF
return
}

echo "<html>
	<head>
		<title>$title</title>
	</head>
	<body>
		<h1>$title</h2>
		<p>$ts</p>
		$(report_disk_space)
	</body>
</html>"
