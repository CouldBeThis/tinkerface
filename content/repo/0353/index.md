+++
draft = "true"
title = "0353"
#slug = "SLUG"
description = "Yet another project"

date = "2022-06-04T03:54:00-04:00"
lastmod = "2022-06-04T03:54:00-04:00"

[[resources]]
name = "header"
src = "images/screenshot.png"

# categories = ["Projects"]

# tags = [ 
# 	#"xfce",
#     #"xfwm4",
#     #"terminal",
#     #"linux",
#     ]

#series = ""
#type = ""
+++

### 🔬 insert text file content

#### not working

{{ with (.Resources.GetMatch "repo-readme.md") }}
{{ .Content }}
{{ end }}


#### working, but not processed by markdown or HTML

{{< readfile "file.txt" >}}

🔬

### 🔬 print description param from front matter

{{< param description >}}

### 🔬 insert a specific image

{{< img src="images/screenshot.png" alt="Example image." size="600x" >}}


### 🔬 doens't work

{{< file "file.txt" >}}
