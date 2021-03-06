<?xml version="1.0" encoding="UTF-8"?>
<!--
Copyright 2020 Institut für Rundfunktechnik GmbH, Munich, Germany

Licensed under the Apache License, Version 2.0 (the "License"); 
you may not use this file except in compliance with the License.
You may obtain a copy of the License 

at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, the subject work
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

See the License for the specific language governing permissions and
limitations under the License.
-->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"  queryBinding="xslt" schemaVersion="ISO19757-3">
    <ns uri="http://www.w3.org/ns/ttml" prefix="tt"/>
    <title>Testing template document tt:p attributes mapping - ignored attributes</title>
    <pattern id="template_p_attributes_mapping_ignored">
        <rule context="/">
            <assert test="tt:tt/tt:body/tt:div/tt:p">
                The tt:p element must be present.
            </assert> 
        </rule>
        <rule context="tt:tt/tt:body/tt:div/tt:p">
            <assert test="not(@begin = 'begin_p')">
                The begin attribute must not have been mapped 1:1.
            </assert> 
            <assert test="not(@end = 'end_p')">
                The end attribute must not have been mapped 1:1.
            </assert> 
            <assert test="not(@dur = 'dur_p')">
                The dur attribute must not have been mapped 1:1.
            </assert> 
            <assert test="not(@xml:id = 'custom_prefix_')">
                The xml:id attribute must not have been mapped 1:1.
            </assert> 
        </rule>
    </pattern>
</schema>