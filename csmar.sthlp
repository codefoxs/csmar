{smcl}
{* *! version 0.1.3 04Nov2025}{...}
{vieweralsosee "[R] import" "help import"}{...}
{vieweralsosee "[R] regexm" "help regexm"}{...}
{vieweralsosee "[R] regexs" "help regexs"}{...}
{vieweralsosee "[R] unzipfile" "help unzipfile"}{...}
{vieweralsosee "[R] merge" "help merge"}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "Syntax" "csmar##syntax"}{...}
{viewerjumpto "Implementation" "csmar##implementation"}{...}
{viewerjumpto "Example" "csmar##example"}{...}
{title:Title}

{p2colset 5 15 15 2}{...}
{p2col :{hi:csmar} {hline 2}}Import data from CSMAR zip/xlsx file{p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:Syntax}
{p 8 14 4}{cmd:csmar} {it:filepath} , [{opt re:move} {opt all:string} {opt case(lower|upper|preserve|raw)} {opt otheropt(string)}]

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab: Main}
{synopt: {it:filepath}}Path to CSMAR zip or xlsx file{p_end}

{syntab: Other options}
{synopt: {opt re:move}}Remove existing files in the folder with same name as the zip file{p_end}
{synopt: {opt all:string}}Force imported data to string format{p_end}
{synopt: {opt case(lower|upper|preserve|raw)}}The case for variable names. Default is lower. preserve and raw are same.{p_end}
{synopt: {opt otheropt(string)}}Other options for {help import}{p_end}
{synoptline}
{p2colreset}{...}

{marker implementation}{...}
{title:Implementation}

{bf:For zip file:}
    {opt csmar} will generate a same-name folder in the same directory as the files, extract the files from the zip archive into the folder, then import the files one by one and merges them.

{bf:For xlsx file:}
    {opt csmar} will import the file directly.

{marker example}{...}
{title:Example}
{hline}
{pstd}Quick use{p_end}
{phang2}{cmd:. csmar "path/to/csmar/zip/file.zip"}{p_end}
{phang2}{cmd:. csmar "path/to/csmar/xlsx/file.xlsx"}{p_end}

{pstd}Remove existing files in the folder{p_end}
{phang2}{cmd:. csmar "path/to/csmar/zip/file.zip", remove}{p_end}

{pstd}Keep the raw case for variable names{p_end}
{phang2}{cmd:. csmar "path/to/csmar/zip/file.zip", remove case(raw)}{p_end}
{hline}

{marker author}{...}
{title:Author}

{pstd}公众号：凯恩斯学计量{p_end}

{phang}{p_end}
