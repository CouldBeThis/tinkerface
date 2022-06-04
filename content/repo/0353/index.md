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

[resources.params]
  icon = "photo"

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

:::::::::: repo-readme.md 

{{ with (.Resources.GetMatch "repo-readme.md") }}
{{ .Content }}
{{ end }}


~~~~~~~~~ readfile

{{< readfile "file.txt" >}}



<!-- ```markdown
hugo new --kind repo content/repo/0353
``` -->
{{< param description >}}

{{< img src="images/screenshot.png" alt="Example image." size="600x" >}}

## resources?

{{ .Resources.Match "images/*" }}

## file

{{< file "readme.md" >}}


## source

(index.md)

## attached-images

{{ partial "attached-images.html" . }}
