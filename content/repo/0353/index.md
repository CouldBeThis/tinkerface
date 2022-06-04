+++
draft = "true"
title = "0353"
#slug = "SLUG"
description = "Yet another project"

date = "2022-06-04T03:54:00-04:00"
lastmod = "2022-06-04T03:54:00-04:00"

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

```markdown
hugo new --kind repo content/repo/0353
```
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

xxx