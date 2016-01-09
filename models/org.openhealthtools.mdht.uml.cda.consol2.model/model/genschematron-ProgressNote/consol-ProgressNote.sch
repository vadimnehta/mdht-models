<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<!DOCTYPE schema [
]>

<schema xmlns="http://www.ascc.net/xml/schematron" xmlns:cda="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<title>Schematron schema for validating conformance to CONSOL documents</title>
<ns prefix="cda" uri="urn:hl7-org:v3"/>
<ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>

<ns prefix="ext" uri="http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_custodian_2_17_16-error_mdht" see="#p-ProgressNote_1A_ProgressNote_custodian_2_17_16-error_mdht" name="p-ProgressNote_1A_ProgressNote_custodian_2_17_16-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.custodian->one(custodian : cda::Custodian | not custodian.oclIsUndefined() and custodian.oclIsKindOf(cda::Custodian))
			Constraint name: GeneralHeaderConstraintsCustodian
		-->
	<assert test="count(cda:custodian)=1">Error: ProgressNote - 2.17.16 custodian
		Conformance: SHALL contain exactly one [1..1] custodian (CONF:5519)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_recordTarget_2_17_12-error_mdht" see="#p-ProgressNote_1A_ProgressNote_recordTarget_2_17_12-error_mdht" name="p-ProgressNote_1A_ProgressNote_recordTarget_2_17_12-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.recordTarget->exists(recordTarget : cda::RecordTarget | not recordTarget.oclIsUndefined() and recordTarget.oclIsKindOf(cda::RecordTarget))
			Constraint name: GeneralHeaderConstraintsRecordTarget
		-->
	<assert test="cda:recordTarget">Error: ProgressNote - 2.17.12 recordTarget
		Conformance: SHALL contain at least one [1..*] recordTarget (CONF:5266)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_typeId_2_17_3-error_mdht" see="#p-ProgressNote_1A_ProgressNote_typeId_2_17_3-error_mdht" name="p-ProgressNote_1A_ProgressNote_typeId_2_17_3-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.typeId.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsTypeId
		-->
	<assert test="cda:typeId">Error: ProgressNote - 2.17.3 typeId
		Conformance: SHALL contain exactly one [1..1] typeId (CONF:5361, R2.1=CONF:1198-5361)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_dataEnterer_2_17_15-error_mdht" see="#p-ProgressNote_1A_ProgressNote_dataEnterer_2_17_15-error_mdht" name="p-ProgressNote_1A_ProgressNote_dataEnterer_2_17_15-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.dataEnterer->select(dataEnterer : cda::DataEnterer | not dataEnterer.oclIsUndefined() and dataEnterer.oclIsKindOf(cda::DataEnterer))->size() <= 1
			Constraint name: GeneralHeaderConstraintsDataEnterer
		-->
	<assert test="count(cda:dataEnterer) &lt;= 1">Error: ProgressNote - 2.17.15 dataEnterer
		Conformance: MAY contain zero or one [0..1] dataEnterer (CONF:5441)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_author_2_17_14-error_mdht" see="#p-ProgressNote_1A_ProgressNote_author_2_17_14-error_mdht" name="p-ProgressNote_1A_ProgressNote_author_2_17_14-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.author->exists(author : cda::Author | not author.oclIsUndefined() and author.oclIsKindOf(cda::Author))
			Constraint name: GeneralHeaderConstraintsAuthor
		-->
	<assert test="cda:author">Error: ProgressNote - 2.17.14 author
		Conformance: SHALL contain at least one [1..*] author (CONF:5444)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_inFulfillmentOf_2_17_22-error_mdht" see="#p-ProgressNote_1A_ProgressNote_inFulfillmentOf_2_17_22-error_mdht" name="p-ProgressNote_1A_ProgressNote_inFulfillmentOf_2_17_22-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.inFulfillmentOf->select(inFulfillmentOf : cda::InFulfillmentOf | not inFulfillmentOf.oclIsUndefined() and inFulfillmentOf.oclIsKindOf(cda::InFulfillmentOf))->size() >= 0
			Constraint name: GeneralHeaderConstraintsInFulfillmentOf
		-->
	<assert test="count(cda:inFulfillmentOf) &gt;= 0">Error: ProgressNote - 2.17.22 inFulfillmentOf
		Conformance: MAY contain zero or more [0..*] inFulfillmentOf (CONF:9952)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_id_2_17_4-error_mdht" see="#p-ProgressNote_1A_ProgressNote_id_2_17_4-error_mdht" name="p-ProgressNote_1A_ProgressNote_id_2_17_4-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.id.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsId
		-->
	<assert test="cda:id">Error: ProgressNote - 2.17.4 id
		Conformance: SHALL contain exactly one [1..1] id (CONF:5363, R2.1=CONF:1198-5363)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_authorization_2_17_24-error_mdht" see="#p-ProgressNote_1A_ProgressNote_authorization_2_17_24-error_mdht" name="p-ProgressNote_1A_ProgressNote_authorization_2_17_24-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.authorization->select(authorization : cda::Authorization | not authorization.oclIsUndefined() and authorization.oclIsKindOf(cda::Authorization))->size() >= 0
			Constraint name: GeneralHeaderConstraintsAuthorization
		-->
	<assert test="count(cda:authorization) &gt;= 0">Error: ProgressNote - 2.17.24 authorization
		Conformance: MAY contain zero or more [0..*] authorization (CONF:16792)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_templateId_2_17_1-error_mdht" see="#p-ProgressNote_1A_ProgressNote_templateId_2_17_1-error_mdht" name="p-ProgressNote_1A_ProgressNote_templateId_2_17_1-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.1.9')
			Constraint name: GeneralHeaderConstraintsTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.1.9'">Error: ProgressNote - 2.17.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:9483, CONF:10051 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.1.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_confidentialityCode_2_17_8-error_mdht" see="#p-ProgressNote_1A_ProgressNote_confidentialityCode_2_17_8-error_mdht" name="p-ProgressNote_1A_ProgressNote_confidentialityCode_2_17_8-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.confidentialityCode.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsConfidentialityCodeP
		-->
	<assert test="cda:confidentialityCode">Error: ProgressNote - 2.17.8 confidentialityCode
		Conformance: SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind 2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:5259, R2.1=CONF:1198-5259)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.confidentialityCode.oclIsUndefined() and self.confidentialityCode.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.confidentialityCode.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.5.25' and (value.code = 'N' or value.code = 'R' or value.code = 'V')
			Constraint name: GeneralHeaderConstraintsConfidentialityCode
		-->
	<assert test="cda:confidentialityCode and cda:confidentialityCode[@codeSystem = '2.16.840.1.113883.5.25' and (@code = 'N' or @code = 'R' or @code = 'V')]">Error: ProgressNote - 2.17.8 confidentialityCode
		Conformance: SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind 2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:5259, R2.1=CONF:1198-5259)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_legalAuthenticator_2_17_18-error_mdht" see="#p-ProgressNote_1A_ProgressNote_legalAuthenticator_2_17_18-error_mdht" name="p-ProgressNote_1A_ProgressNote_legalAuthenticator_2_17_18-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.legalAuthenticator->select(legalAuthenticator : cda::LegalAuthenticator | not legalAuthenticator.oclIsUndefined() and legalAuthenticator.oclIsKindOf(cda::LegalAuthenticator))->size() <= 1
			Constraint name: GeneralHeaderConstraintsLegalAuthenticator
		-->
	<assert test="count(cda:legalAuthenticator) &lt;= 1">Error: ProgressNote - 2.17.18 legalAuthenticator
		Conformance: SHOULD contain zero or one [0..1] legalAuthenticator (CONF:5579)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_HistoryAndPhysicalNote_2_11-error_mdht" see="#p-ProgressNote_1A_ProgressNote_HistoryAndPhysicalNote_2_11-error_mdht" name="p-ProgressNote_1A_ProgressNote_HistoryAndPhysicalNote_2_11-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: (self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::PlanOfCareSection)) and  self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::AssessmentSection))) xor self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::AssessmentAndPlanSection))
			Constraint name: ProgressNoteHasAnAssementAndPlanSectionOrIndividualAssementAndPlanSections
		-->
	<assert test="count(.//cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'])=1 and count(.//cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8'])=1 or count(.//cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'])=1">Error: ProgressNote - 2.11 HistoryAndPhysicalNote
		Conformance: 
		Analysis: SHALL include an Assessment and Plan Section, or an Assessment Section and a Plan Section
		Validation message: n/a	</assert>
		<!--
			OCL: (self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::PlanOfCareSection)) or  self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::AssessmentSection))) xor self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::AssessmentAndPlanSection))
			Constraint name: ProgressNoteDoesNotHaveIndividualAssementAndPlanSectionsWhenAssementAndPlanSectionPresent
		-->
	<assert test="count(.//cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'])=1 or count(.//cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8'])=1 or count(.//cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'])=1">Error: ProgressNote - 2.11 HistoryAndPhysicalNote
		Conformance: 
		Analysis: SHALL NOT include an Assessment/Plan Section when an Assessment Section and a Plan of Care Section are present
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_effectiveTime_2_17_7-error_mdht" see="#p-ProgressNote_1A_ProgressNote_effectiveTime_2_17_7-error_mdht" name="p-ProgressNote_1A_ProgressNote_effectiveTime_2_17_7-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsEffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: ProgressNote - 2.17.7 effectiveTime
		Conformance: SHALL contain exactly one [1..1] effectiveTime (CONF:5256, R2.1=CONF:1198-5256)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_title_2_17_6-error_mdht" see="#p-ProgressNote_1A_ProgressNote_title_2_17_6-error_mdht" name="p-ProgressNote_1A_ProgressNote_title_2_17_6-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 2.17.6 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:5254)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_supportParticipant_2_17_21-error_mdht" see="#p-ProgressNote_1A_ProgressNote_supportParticipant_2_17_21-error_mdht" name="p-ProgressNote_1A_ProgressNote_supportParticipant_2_17_21-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.participant->select(participant : cda::Participant1 | not participant.oclIsUndefined() and participant.oclIsKindOf(cda::Participant1))->size() >= 0
			Constraint name: GeneralHeaderConstraintsSupportParticipant
		-->
	<assert test="count(cda:participant) &gt;= 0">Error: ProgressNote - 2.17.21 supportParticipant
		Conformance: MAY contain zero or more [0..*] participant (CONF:10003)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_code_2_17_3-error_mdht" see="#p-ProgressNote_1A_ProgressNote_code_2_17_3-error_mdht" name="p-ProgressNote_1A_ProgressNote_code_2_17_3-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 2.17.3 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:17189), which SHALL be selected from ValueSet ProgressNoteDocumentTypeCode 2.16.840.1.113883.11.20.8.1 DYNAMIC (CONF:17190)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.1' and (value.code = '11506-3' or value.code = '18733-6' or value.code = '18762-5' or value.code = '28569-2' or value.code = '28617-9' or value.code = '34900-1' or value.code = '34904-3' or value.code = '18764-1' or value.code = '28623-7' or value.code = '11507-1' or value.code = '11508-9' or value.code = '11509-7' or value.code = '28627-8' or value.code = '11510-5' or value.code = '28656-7' or value.code = '11512-1' or value.code = '34126-3' or value.code = '15507-7' or value.code = '34129-7' or value.code = '34125-5' or value.code = '34130-5' or value.code = '34131-3' or value.code = '34124-8' or value.code = '34127-1' or value.code = '34128-9' or value.code = '34901-9' or value.code = '34132-1')
			Constraint name: GeneralHeaderConstraintsCode
		-->
	<assert test="cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.1' and (@code = '11506-3' or @code = '18733-6' or @code = '18762-5' or @code = '28569-2' or @code = '28617-9' or @code = '34900-1' or @code = '34904-3' or @code = '18764-1' or @code = '28623-7' or @code = '11507-1' or @code = '11508-9' or @code = '11509-7' or @code = '28627-8' or @code = '11510-5' or @code = '28656-7' or @code = '11512-1' or @code = '34126-3' or @code = '15507-7' or @code = '34129-7' or @code = '34125-5' or @code = '34130-5' or @code = '34131-3' or @code = '34124-8' or @code = '34127-1' or @code = '34128-9' or @code = '34901-9' or @code = '34132-1')]">Error: ProgressNote - 2.17.3 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:17189), which SHALL be selected from ValueSet ProgressNoteDocumentTypeCode 2.16.840.1.113883.11.20.8.1 DYNAMIC (CONF:17190)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_documentationOf_2_17_4-error_mdht" see="#p-ProgressNote_1A_ProgressNote_documentationOf_2_17_4-error_mdht" name="p-ProgressNote_1A_ProgressNote_documentationOf_2_17_4-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.documentationOf->select(documentationOf : cda::DocumentationOf | not documentationOf.oclIsUndefined() and documentationOf.oclIsKindOf(cda::DocumentationOf))->size() <= 1
			Constraint name: ProgressNoteDocumentationOf
		-->
	<assert test="count(cda:documentationOf) &lt;= 1">Error: ProgressNote - 2.17.4 documentationOf
		Conformance: SHOULD contain zero or one [0..1] documentationOf (CONF:7603)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_authenticator_2_17_19-error_mdht" see="#p-ProgressNote_1A_ProgressNote_authenticator_2_17_19-error_mdht" name="p-ProgressNote_1A_ProgressNote_authenticator_2_17_19-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.authenticator->select(authenticator : cda::Authenticator | not authenticator.oclIsUndefined() and authenticator.oclIsKindOf(cda::Authenticator))->size() >= 0
			Constraint name: GeneralHeaderConstraintsAuthenticator
		-->
	<assert test="count(cda:authenticator) &gt;= 0">Error: ProgressNote - 2.17.19 authenticator
		Conformance: MAY contain zero or more [0..*] authenticator (CONF:5607)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_informant_2_17_20-error_mdht" see="#p-ProgressNote_1A_ProgressNote_informant_2_17_20-error_mdht" name="p-ProgressNote_1A_ProgressNote_informant_2_17_20-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.informant->select(informant : cda::Informant12 | not informant.oclIsUndefined() and informant.oclIsKindOf(cda::Informant12))->size() >= 0
			Constraint name: GeneralHeaderConstraintsInformant
		-->
	<assert test="count(cda:informant) &gt;= 0">Error: ProgressNote - 2.17.20 informant
		Conformance: MAY contain zero or more [0..*] informant (CONF:8001)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_2_ProgressNote_componentOf_2_17_5-error_mdht" see="#p-ProgressNote_2_ProgressNote_componentOf_2_17_5-error_mdht" name="p-ProgressNote_2_ProgressNote_componentOf_2_17_5-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.componentOf->one(componentOf : cda::Component1 | not componentOf.oclIsUndefined() and componentOf.oclIsKindOf(cda::Component1))
			Constraint name: ProgressNoteComponentOf
		-->
	<assert test="count(cda:componentOf)=1">Error: ProgressNote - 2.17.5 componentOf
		Conformance: SHALL contain exactly one [1..1] componentOf
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_setId_2_17_10-error_mdht" see="#p-ProgressNote_1A_ProgressNote_setId_2_17_10-error_mdht" name="p-ProgressNote_1A_ProgressNote_setId_2_17_10-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: ((not self.setId.oclIsUndefined()) and self.setId.isNullFlavorUndefined()) implies (not self.setId.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsSetId
		-->
	<assert test="not(cda:setId and not(cda:setId/@nullFlavor)) or cda:setId">Error: ProgressNote - 2.17.10 setId
		Conformance: MAY contain zero or one [0..1] setId (CONF:5261, R2.1=CONF:1198-5261)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_2_ProgressNote_component_2_17_6-error_mdht" see="#p-ProgressNote_2_ProgressNote_component_2_17_6-error_mdht" name="p-ProgressNote_2_ProgressNote_component_2_17_6-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.component->one(component : cda::Component2 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component))
			Constraint name: ProgressNoteComponent
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6 component
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_versionNumber_2_17_11-error_mdht" see="#p-ProgressNote_1A_ProgressNote_versionNumber_2_17_11-error_mdht" name="p-ProgressNote_1A_ProgressNote_versionNumber_2_17_11-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: ((not self.versionNumber.oclIsUndefined()) and self.versionNumber.isNullFlavorUndefined()) implies (not self.versionNumber.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsVersionNumber
		-->
	<assert test="not(cda:versionNumber and not(cda:versionNumber/@nullFlavor)) or cda:versionNumber">Error: ProgressNote - 2.17.11 versionNumber
		Conformance: MAY contain zero or one [0..1] versionNumber (CONF:5264, R2.1=CONF:1198-5264)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_realmCode_2_17_2-error_mdht" see="#p-ProgressNote_1A_ProgressNote_realmCode_2_17_2-error_mdht" name="p-ProgressNote_1A_ProgressNote_realmCode_2_17_2-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: true
			Constraint name: GeneralHeaderConstraintsRealmCodeP
		-->
	<assert test="true()">Error: ProgressNote - 2.17.2 realmCode
		Conformance: SHALL contain exactly one [1..1] realmCode/@code=&quot;US&quot;  (CONF:16791)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.realmCode->size() = 1 and self.realmCode->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = element.oclAsType(datatypes::CS) in 
value.code = 'US')
			Constraint name: GeneralHeaderConstraintsRealmCode
		-->
	<assert test="count(cda:realmCode) = 1 and not(cda:realmCode[not(. and @code = 'US')])">Error: ProgressNote - 2.17.2 realmCode
		Conformance: SHALL contain exactly one [1..1] realmCode/@code=&quot;US&quot;  (CONF:16791)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_languageCode_2_17_9-error_mdht" see="#p-ProgressNote_1A_ProgressNote_languageCode_2_17_9-error_mdht" name="p-ProgressNote_1A_ProgressNote_languageCode_2_17_9-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.languageCode.oclIsUndefined() and self.languageCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.languageCode.oclAsType(datatypes::CS) in 
not value.code.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsLanguageCode
		-->
	<assert test="cda:languageCode and cda:languageCode[@code]">Error: ProgressNote - 2.17.9 languageCode
		Conformance: SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5372, R2.1=CONF:1198-5372)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.languageCode.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsLanguageCodeP
		-->
	<assert test="cda:languageCode">Error: ProgressNote - 2.17.9 languageCode
		Conformance: SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5372, R2.1=CONF:1198-5372)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProgressNote: 2.16.840.1.113883.10.20.22.1.9 -->

<pattern id="p-ProgressNote_1A_ProgressNote_informationRecipient_2_17_17-error_mdht" see="#p-ProgressNote_1A_ProgressNote_informationRecipient_2_17_17-error_mdht" name="p-ProgressNote_1A_ProgressNote_informationRecipient_2_17_17-error_mdht">
		<!--
			UML path: /ProgressNote
			UML root path: /ProgressNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.informationRecipient->select(informationRecipient : cda::InformationRecipient | not informationRecipient.oclIsUndefined() and informationRecipient.oclIsKindOf(cda::InformationRecipient))->size() >= 0
			Constraint name: GeneralHeaderConstraintsInformationRecipient
		-->
	<assert test="count(cda:informationRecipient) &gt;= 0">Error: ProgressNote - 2.17.17 informationRecipient
		Conformance: MAY contain zero or more [0..*] informationRecipient (CONF:5565)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- DocumentationOf -->

<pattern id="p-ProgressNote_1A_DocumentationOf_serviceEvent2_2_17_4_i-error_mdht" see="#p-ProgressNote_1A_DocumentationOf_serviceEvent2_2_17_4_i-error_mdht" name="p-ProgressNote_1A_DocumentationOf_serviceEvent2_2_17_4_i-error_mdht">
		<!--
			UML path: /ProgressNote/documentationOf
			UML root path: /ProgressNote/documentationOf
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf">
		<!--
			OCL: self.serviceEvent->one(serviceEvent : cda::ServiceEvent | not serviceEvent.oclIsUndefined() and serviceEvent.oclIsKindOf(consol::ProgressNote::DocumentationOf::ServiceEvent2))
			Constraint name: ProgressNoteDocumentationOfServiceEvent2
		-->
	<assert test="count(cda:serviceEvent[cda:templateId/@root = '2.16.840.1.113883.10.20.21.3.1'])=1">Error: ProgressNote - 2.17.4.i serviceEvent2
		Conformance: SHALL contain exactly one [1..1] serviceEvent
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent2: 2.16.840.1.113883.10.20.21.3.1 -->

<pattern id="p-ProgressNote_1A_ServiceEvent2_effectiveTime_2_17_4_i_b-error_mdht" see="#p-ProgressNote_1A_ServiceEvent2_effectiveTime_2_17_4_i_b-error_mdht" name="p-ProgressNote_1A_ServiceEvent2_effectiveTime_2_17_4_i_b-error_mdht">
		<!--
			UML path: /ProgressNote/documentationOf/serviceEvent2
			UML root path: /ProgressNote/documentationOf/serviceEvent2
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: ((not self.effectiveTime.oclIsUndefined()) and self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())
			Constraint name: ProgressNoteDocumentationOfServiceEvent2EffectiveTime
		-->
	<assert test="not(cda:effectiveTime and not(cda:effectiveTime/@nullFlavor)) or cda:effectiveTime">Error: ProgressNote - 2.17.4.i.b effectiveTime
		Conformance: SHOULD contain zero or one [0..1] effectiveTime (CONF:9481)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent2: 2.16.840.1.113883.10.20.21.3.1 -->

<pattern id="p-ProgressNote_1A_ServiceEvent2_ProgressNoteDocumentationOfServiceEvent2EffectiveTimeLow_2_17_4_i_c-error_mdht" see="#p-ProgressNote_1A_ServiceEvent2_ProgressNoteDocumentationOfServiceEvent2EffectiveTimeLow_2_17_4_i_c-error_mdht" name="p-ProgressNote_1A_ServiceEvent2_ProgressNoteDocumentationOfServiceEvent2EffectiveTimeLow_2_17_4_i_c-error_mdht">
		<!--
			UML path: /ProgressNote/documentationOf/serviceEvent2
			UML root path: /ProgressNote/documentationOf/serviceEvent2
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: self.effectiveTime->forAll(not low.oclIsUndefined())
			Constraint name: ProgressNoteDocumentationOfServiceEvent2EffectiveTimeLow
		-->
	<assert test="not(cda:effectiveTime[not(cda:low)])">Error: ProgressNote - 2.17.4.i.c ProgressNoteDocumentationOfServiceEvent2EffectiveTimeLow
		Conformance: The serviceEvent/effectiveTime element SHOULD be present with effectiveTime/low element (CONF:9482)
		Analysis: The serviceEvent/effectiveTime element SHOULD be present with effectiveTime/low element
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent2: 2.16.840.1.113883.10.20.21.3.1 -->

<pattern id="p-ProgressNote_1A_ServiceEvent2_classCode_2_17_4_i_a-error_mdht" see="#p-ProgressNote_1A_ServiceEvent2_classCode_2_17_4_i_a-error_mdht" name="p-ProgressNote_1A_ServiceEvent2_classCode_2_17_4_i_a-error_mdht">
		<!--
			UML path: /ProgressNote/documentationOf/serviceEvent2
			UML root path: /ProgressNote/documentationOf/serviceEvent2
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: isDefined('classCode') and self.classCode=vocab::ActClassRoot::PCPR
			Constraint name: ProgressNoteDocumentationOfServiceEvent2ClassCode
		-->
	<assert test="attribute::node()[name() = 'classCode'] and @classCode = 'PCPR'">Error: ProgressNote - 2.17.4.i.a classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;PCPR&quot;  (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7604)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent2: 2.16.840.1.113883.10.20.21.3.1 -->

<pattern id="p-ProgressNote_1A_ServiceEvent2_templateId_2_17_4_i_a-error_mdht" see="#p-ProgressNote_1A_ServiceEvent2_templateId_2_17_4_i_a-error_mdht" name="p-ProgressNote_1A_ServiceEvent2_templateId_2_17_4_i_a-error_mdht">
		<!--
			UML path: /ProgressNote/documentationOf/serviceEvent2
			UML root path: /ProgressNote/documentationOf/serviceEvent2
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.21.3.1')
			Constraint name: ProgressNoteDocumentationOfServiceEvent2TemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.21.3.1'">Error: ProgressNote - 2.17.4.i.a templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:9480, CONF:10068 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.21.3.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent2: 2.16.840.1.113883.10.20.21.3.1 -->

<pattern id="p-ProgressNote_1A_ServiceEvent2_ProgressNoteDocumentationOfServiceEvent2EffectiveTimeHigh_2_17_4_i_d-error_mdht" see="#p-ProgressNote_1A_ServiceEvent2_ProgressNoteDocumentationOfServiceEvent2EffectiveTimeHigh_2_17_4_i_d-error_mdht" name="p-ProgressNote_1A_ServiceEvent2_ProgressNoteDocumentationOfServiceEvent2EffectiveTimeHigh_2_17_4_i_d-error_mdht">
		<!--
			UML path: /ProgressNote/documentationOf/serviceEvent2
			UML root path: /ProgressNote/documentationOf/serviceEvent2
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: self.effectiveTime->forAll(width.oclIsUndefined() implies not high.oclIsUndefined())
			Constraint name: ProgressNoteDocumentationOfServiceEvent2EffectiveTimeHigh
		-->
	<assert test="not(cda:effectiveTime[not(cda:width or cda:high)])">Error: ProgressNote - 2.17.4.i.d ProgressNoteDocumentationOfServiceEvent2EffectiveTimeHigh
		Conformance: If a width element is not present, the serviceEvent SHALL include effectiveTime/ (CONF:10066)
		Analysis: If a width element is not present, the serviceEvent SHALL include effectiveTime/
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ComponentOf -->

<pattern id="p-ProgressNote_2_ComponentOf_encompassingEncounter6_2_17_5_i-error_mdht" see="#p-ProgressNote_2_ComponentOf_encompassingEncounter6_2_17_5_i-error_mdht" name="p-ProgressNote_2_ComponentOf_encompassingEncounter6_2_17_5_i-error_mdht">
		<!--
			UML path: /ProgressNote/componentOf
			UML root path: /ProgressNote/componentOf
		-->
	<rule context="/cda:ClinicalDocument/cda:componentOf">
		<!--
			OCL: self.encompassingEncounter->one(encompassingEncounter : cda::EncompassingEncounter | not encompassingEncounter.oclIsUndefined() and encompassingEncounter.oclIsKindOf(consol::ProgressNote::ComponentOf::EncompassingEncounter6))
			Constraint name: ProgressNoteComponentOfEncompassingEncounter6
		-->
	<assert test="count(cda:encompassingEncounter)=1">Error: ProgressNote - 2.17.5.i encompassingEncounter6
		Conformance: SHALL contain exactly one [1..1] encompassingEncounter (CONF:7596)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EncompassingEncounter6 -->

<pattern id="p-ProgressNote_2_EncompassingEncounter6_location_2_17_5_i_c-error_mdht" see="#p-ProgressNote_2_EncompassingEncounter6_location_2_17_5_i_c-error_mdht" name="p-ProgressNote_2_EncompassingEncounter6_location_2_17_5_i_c-error_mdht">
		<!--
			UML path: /ProgressNote/componentOf/encompassingEncounter6
			UML root path: /ProgressNote/componentOf/encompassingEncounter6
		-->
	<rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter">
		<!--
			OCL: self.location->one(location : cda::Location | not location.oclIsUndefined() and location.oclIsKindOf(consol::ProgressNote::ComponentOf::EncompassingEncounter6::Location))
			Constraint name: ProgressNoteComponentOfEncompassingEncounter6Location
		-->
	<assert test="count(cda:location)=1">Error: ProgressNote - 2.17.5.i.c location
		Conformance: SHALL contain exactly one [1..1] location
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EncompassingEncounter6 -->

<pattern id="p-ProgressNote_2_EncompassingEncounter6_id_2_17_5_i_b-error_mdht" see="#p-ProgressNote_2_EncompassingEncounter6_id_2_17_5_i_b-error_mdht" name="p-ProgressNote_2_EncompassingEncounter6_id_2_17_5_i_b-error_mdht">
		<!--
			UML path: /ProgressNote/componentOf/encompassingEncounter6
			UML root path: /ProgressNote/componentOf/encompassingEncounter6
		-->
	<rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: ProgressNoteComponentOfEncompassingEncounter6Id
		-->
	<assert test="cda:id">Error: ProgressNote - 2.17.5.i.b id
		Conformance: SHALL contain at least one [1..*] id (CONF:7597)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EncompassingEncounter6 -->

<pattern id="p-ProgressNote_2_EncompassingEncounter6_effectiveTime_2_17_5_i_a-error_mdht" see="#p-ProgressNote_2_EncompassingEncounter6_effectiveTime_2_17_5_i_a-error_mdht" name="p-ProgressNote_2_EncompassingEncounter6_effectiveTime_2_17_5_i_a-error_mdht">
		<!--
			UML path: /ProgressNote/componentOf/encompassingEncounter6
			UML root path: /ProgressNote/componentOf/encompassingEncounter6
		-->
	<rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: ProgressNoteComponentOfEncompassingEncounter6EffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: ProgressNote - 2.17.5.i.a effectiveTime
		Conformance: SHALL contain exactly one [1..1] effectiveTime (CONF:7598)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Location -->

<pattern id="p-ProgressNote_2_Location_healthCareFacility_2_17_5_i_c_1-error_mdht" see="#p-ProgressNote_2_Location_healthCareFacility_2_17_5_i_c_1-error_mdht" name="p-ProgressNote_2_Location_healthCareFacility_2_17_5_i_c_1-error_mdht">
		<!--
			UML path: /ProgressNote/componentOf/encompassingEncounter6/location
			UML root path: /ProgressNote/componentOf/encompassingEncounter6/location
		-->
	<rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location">
		<!--
			OCL: self.healthCareFacility->one(healthCareFacility : cda::HealthCareFacility | not healthCareFacility.oclIsUndefined() and healthCareFacility.oclIsKindOf(consol::ProgressNote::ComponentOf::EncompassingEncounter6::Location::HealthCareFacility1))
			Constraint name: ProgressNoteComponentOfEncompassingEncounter6LocationHealthCareFacility
		-->
	<assert test="count(cda:healthCareFacility)=1">Error: ProgressNote - 2.17.5.i.c.1 healthCareFacility
		Conformance: SHALL contain exactly one [1..1] healthCareFacility
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- HealthCareFacility1 -->

<pattern id="p-ProgressNote_2_HealthCareFacility1_id_2_17_5_i_c_1_i-error_mdht" see="#p-ProgressNote_2_HealthCareFacility1_id_2_17_5_i_c_1_i-error_mdht" name="p-ProgressNote_2_HealthCareFacility1_id_2_17_5_i_c_1_i-error_mdht">
		<!--
			UML path: /ProgressNote/componentOf/encompassingEncounter6/location/healthCareFacility
			UML root path: /ProgressNote/componentOf/encompassingEncounter6/location/healthCareFacility
		-->
	<rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility">
		<!--
			OCL: self.id->size() = 1
			Constraint name: ProgressNoteComponentOfEncompassingEncounter6LocationHealthCareFacility1Id
		-->
	<assert test="count(cda:id) = 1">Error: ProgressNote - 2.17.5.i.c.1.i id
		Conformance: SHALL contain exactly one [1..1] id (CONF:7611)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_structuredBody_2_17_6_i-error_mdht" see="#p-ProgressNote_2_Component_structuredBody_2_17_6_i-error_mdht" name="p-ProgressNote_2_Component_structuredBody_2_17_6_i-error_mdht">
		<!--
			UML path: /ProgressNote/component
			UML root path: /ProgressNote/component
		-->
	<rule context="/cda:ClinicalDocument/cda:component">
		<!--
			OCL: self.structuredBody->one(structuredBody : cda::StructuredBody | not structuredBody.oclIsUndefined() and structuredBody.oclIsKindOf(consol::ProgressNote::Component::StructuredBody))
			Constraint name: ProgressNoteComponentStructuredBody
		-->
	<assert test="count(cda:structuredBody)=1">Error: ProgressNote - 2.17.6.i structuredBody
		Conformance: SHALL contain exactly one [1..1] structuredBody
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_planOfCareSection_2_17_6_i_b-error_mdht" see="#p-ProgressNote_2_StructuredBody_planOfCareSection_2_17_6_i_b-error_mdht" name="p-ProgressNote_2_StructuredBody_planOfCareSection_2_17_6_i_b-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyPlanOfCareSection
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.b planOfCareSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_interventionsSection_2_17_6_i_f-error_mdht" see="#p-ProgressNote_2_StructuredBody_interventionsSection_2_17_6_i_f-error_mdht" name="p-ProgressNote_2_StructuredBody_interventionsSection_2_17_6_i_f-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyInterventionsSection
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.f interventionsSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_chiefComplaintSection_2_17_6_i_e-error_mdht" see="#p-ProgressNote_2_StructuredBody_chiefComplaintSection_2_17_6_i_e-error_mdht" name="p-ProgressNote_2_StructuredBody_chiefComplaintSection_2_17_6_i_e-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyChiefComplaintSection
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.e chiefComplaintSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_objectiveSection_2_17_6_i_h-error_mdht" see="#p-ProgressNote_2_StructuredBody_objectiveSection_2_17_6_i_h-error_mdht" name="p-ProgressNote_2_StructuredBody_objectiveSection_2_17_6_i_h-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyObjectiveSection
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.h objectiveSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_assessmentAndPlanSection_2_17_6_i_c-error_mdht" see="#p-ProgressNote_2_StructuredBody_assessmentAndPlanSection_2_17_6_i_c-error_mdht" name="p-ProgressNote_2_StructuredBody_assessmentAndPlanSection_2_17_6_i_c-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyAssessmentAndPlanSection
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.c assessmentAndPlanSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_problemSectionEntriesOptional_2_17_6_i_j-error_mdht" see="#p-ProgressNote_2_StructuredBody_problemSectionEntriesOptional_2_17_6_i_j-error_mdht" name="p-ProgressNote_2_StructuredBody_problemSectionEntriesOptional_2_17_6_i_j-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyProblemSectionEntriesOptional
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.j problemSectionEntriesOptional
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_subjectiveSection_2_17_6_i_m-error_mdht" see="#p-ProgressNote_2_StructuredBody_subjectiveSection_2_17_6_i_m-error_mdht" name="p-ProgressNote_2_StructuredBody_subjectiveSection_2_17_6_i_m-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodySubjectiveSection
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.m subjectiveSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_resultsSectionEntriesOptional_2_17_6_i_k-error_mdht" see="#p-ProgressNote_2_StructuredBody_resultsSectionEntriesOptional_2_17_6_i_k-error_mdht" name="p-ProgressNote_2_StructuredBody_resultsSectionEntriesOptional_2_17_6_i_k-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyResultsSectionEntriesOptional
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.k resultsSectionEntriesOptional
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_instructionsSection_2_17_6_i_o-error_mdht" see="#p-ProgressNote_2_StructuredBody_instructionsSection_2_17_6_i_o-error_mdht" name="p-ProgressNote_2_StructuredBody_instructionsSection_2_17_6_i_o-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyInstructionsSection
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.o instructionsSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_physicalExamSection_2_17_6_i_i-error_mdht" see="#p-ProgressNote_2_StructuredBody_physicalExamSection_2_17_6_i_i-error_mdht" name="p-ProgressNote_2_StructuredBody_physicalExamSection_2_17_6_i_i-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyPhysicalExamSection
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.i physicalExamSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_allergiesSectionEntriesOptional_2_17_6_i_d-error_mdht" see="#p-ProgressNote_2_StructuredBody_allergiesSectionEntriesOptional_2_17_6_i_d-error_mdht" name="p-ProgressNote_2_StructuredBody_allergiesSectionEntriesOptional_2_17_6_i_d-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyAllergiesSectionEntriesOptional
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.d allergiesSectionEntriesOptional
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_assessmentSection_2_17_6_i_a-error_mdht" see="#p-ProgressNote_2_StructuredBody_assessmentSection_2_17_6_i_a-error_mdht" name="p-ProgressNote_2_StructuredBody_assessmentSection_2_17_6_i_a-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyAssessmentSection
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.a assessmentSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_vitalSignsSectionEntriesOptional_2_17_6_i_n-error_mdht" see="#p-ProgressNote_2_StructuredBody_vitalSignsSectionEntriesOptional_2_17_6_i_n-error_mdht" name="p-ProgressNote_2_StructuredBody_vitalSignsSectionEntriesOptional_2_17_6_i_n-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyVitalSignsSectionEntriesOptional
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.n vitalSignsSectionEntriesOptional
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_medicationsSectionEntriesOptional_2_17_6_i_g-error_mdht" see="#p-ProgressNote_2_StructuredBody_medicationsSectionEntriesOptional_2_17_6_i_g-error_mdht" name="p-ProgressNote_2_StructuredBody_medicationsSectionEntriesOptional_2_17_6_i_g-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyMedicationsSectionEntriesOptional
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.g medicationsSectionEntriesOptional
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-ProgressNote_2_StructuredBody_reviewOfSystemsSection_2_17_6_i_l-error_mdht" see="#p-ProgressNote_2_StructuredBody_reviewOfSystemsSection_2_17_6_i_l-error_mdht" name="p-ProgressNote_2_StructuredBody_reviewOfSystemsSection_2_17_6_i_l-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody
			UML root path: /ProgressNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::ProgressNote::Component::StructuredBody::Component))
			Constraint name: ProgressNoteComponentStructuredBodyReviewOfSystemsSection
		-->
	<assert test="count(cda:component)=1">Error: ProgressNote - 2.17.6.i.l reviewOfSystemsSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_assessmentSection_2_17_6_i_a_1-error_mdht" see="#p-ProgressNote_2_Component_assessmentSection_2_17_6_i_a_1-error_mdht" name="p-ProgressNote_2_Component_assessmentSection_2_17_6_i_a_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/assessmentSection
			UML root path: /ProgressNote/component/structuredBody/assessmentSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::AssessmentSection))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentAssessmentSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8']) &lt;= 1">Error: ProgressNote - 2.17.6.i.a.1 assessmentSection
		Conformance: MAY contain zero or one [0..1] section (CONF:8776)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssessmentSection: 2.16.840.1.113883.10.20.22.2.8 -->

<pattern id="p-ProgressNote_2_AssessmentSection_templateId_3_15_1-error_mdht" see="#p-ProgressNote_2_AssessmentSection_templateId_3_15_1-error_mdht" name="p-ProgressNote_2_AssessmentSection_templateId_3_15_1-error_mdht">
		<!--
			UML path: /AssessmentSection
			UML root path: /ConsultationNote/component/structuredBody/assessmentSection/assessmentSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.8')
			Constraint name: AssessmentSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8'">Error: ProgressNote - 3.15.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7711, CONF:10382 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.8&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssessmentSection: 2.16.840.1.113883.10.20.22.2.8 -->

<pattern id="p-ProgressNote_2_AssessmentSection_text_3_15_3-error_mdht" see="#p-ProgressNote_2_AssessmentSection_text_3_15_3-error_mdht" name="p-ProgressNote_2_AssessmentSection_text_3_15_3-error_mdht">
		<!--
			UML path: /AssessmentSection
			UML root path: /ConsultationNote/component/structuredBody/assessmentSection/assessmentSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: AssessmentSectionText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.15.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7713)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssessmentSection: 2.16.840.1.113883.10.20.22.2.8 -->

<pattern id="p-ProgressNote_2_AssessmentSection_title_3_15_4-error_mdht" see="#p-ProgressNote_2_AssessmentSection_title_3_15_4-error_mdht" name="p-ProgressNote_2_AssessmentSection_title_3_15_4-error_mdht">
		<!--
			UML path: /AssessmentSection
			UML root path: /ConsultationNote/component/structuredBody/assessmentSection/assessmentSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: AssessmentSectionTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.15.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:16774)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssessmentSection: 2.16.840.1.113883.10.20.22.2.8 -->

<pattern id="p-ProgressNote_2_AssessmentSection_code_3_15_2-error_mdht" see="#p-ProgressNote_2_AssessmentSection_code_3_15_2-error_mdht" name="p-ProgressNote_2_AssessmentSection_code_3_15_2-error_mdht">
		<!--
			UML path: /AssessmentSection
			UML root path: /ConsultationNote/component/structuredBody/assessmentSection/assessmentSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '51848-0' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: AssessmentSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '51848-0' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.15.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14757)/@code=&quot;51848-0&quot; Assessments (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:14758)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: AssessmentSectionCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.15.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14757)/@code=&quot;51848-0&quot; Assessments (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:14758)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_planOfCareSection_2_17_6_i_b_1-error_mdht" see="#p-ProgressNote_2_Component_planOfCareSection_2_17_6_i_b_1-error_mdht" name="p-ProgressNote_2_Component_planOfCareSection_2_17_6_i_b_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/planOfCareSection
			UML root path: /ProgressNote/component/structuredBody/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::PlanOfCareSection))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentPlanOfCareSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']) &lt;= 1">Error: ProgressNote - 2.17.6.i.b.1 planOfCareSection
		Conformance: MAY contain zero or one [0..1] section (CONF:8775)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_2_PlanOfCareSection_templateId_3_81_1-error_mdht" see="#p-ProgressNote_2_PlanOfCareSection_templateId_3_81_1-error_mdht" name="p-ProgressNote_2_PlanOfCareSection_templateId_3_81_1-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: ProgressNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: ProgressNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: ProgressNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: ProgressNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: ProgressNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: ProgressNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: ProgressNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: ProgressNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: ProgressNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_6-error_mdht" see="#p-ProgressNote_3A_PlanOfCareSection_entry_3_81_6-error_mdht" name="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_6-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivityEncounterEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.81.6 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_9-error_mdht" see="#p-ProgressNote_3A_PlanOfCareSection_entry_3_81_9-error_mdht" name="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_9-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivitySubstanceAdministrationEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.81.9 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_11-error_mdht" see="#p-ProgressNote_3A_PlanOfCareSection_entry_3_81_11-error_mdht" name="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_11-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::InstructionsEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.81.11 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_2_PlanOfCareSection_text_3_82_4-error_mdht" see="#p-ProgressNote_2_PlanOfCareSection_text_3_82_4-error_mdht" name="p-ProgressNote_2_PlanOfCareSection_text_3_82_4-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: PlanOfCareSectionText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.82.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7725, R2.0=CONF:1098-7725)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_2_PlanOfCareSection_code_3_81_2-error_mdht" see="#p-ProgressNote_2_PlanOfCareSection_code_3_81_2-error_mdht" name="p-ProgressNote_2_PlanOfCareSection_code_3_81_2-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '18776-5' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: PlanOfCareSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.81.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14749)/@code=&quot;18776-5&quot; Treatment plan (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:14750)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: PlanOfCareSectionCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.81.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14749)/@code=&quot;18776-5&quot; Treatment plan (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:14750)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_5-error_mdht" see="#p-ProgressNote_3A_PlanOfCareSection_entry_3_81_5-error_mdht" name="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_5-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivityActEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.81.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_2_PlanOfCareSection_title_3_82_3-error_mdht" see="#p-ProgressNote_2_PlanOfCareSection_title_3_82_3-error_mdht" name="p-ProgressNote_2_PlanOfCareSection_title_3_82_3-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: PlanOfCareSectionTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.82.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:16986, R2.0=CONF:1098-16986)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_10-error_mdht" see="#p-ProgressNote_3A_PlanOfCareSection_entry_3_81_10-error_mdht" name="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_10-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivitySupplyEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.81.10 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_7-error_mdht" see="#p-ProgressNote_3A_PlanOfCareSection_entry_3_81_7-error_mdht" name="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_7-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivityObservationEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.81.7 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_8-error_mdht" see="#p-ProgressNote_3A_PlanOfCareSection_entry_3_81_8-error_mdht" name="p-ProgressNote_3A_PlanOfCareSection_entry_3_81_8-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivityProcedureEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.81.8 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityActEntry -->

<pattern id="p-ProgressNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_81_5_i-error_mdht" see="#p-ProgressNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_81_5_i-error_mdht" name="p-ProgressNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_81_5_i-error_mdht">
		<!--
			UML path: /PlanOfCareSection/entry
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry">
		<!--
			OCL: self.act->select(act : cda::Act | not act.oclIsUndefined() and act.oclIsKindOf(consol::PlanOfCareActivityAct))->size() >= 0
			Constraint name: PlanOfCareSectionPlanOfCareActivityActEntryPlanOfCareActivityAct
		-->
	<assert test="count(cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']) &gt;= 0">Error: ProgressNote - 3.81.5.i planOfCareActivityAct
		Conformance: MAY contain zero or more [0..*] act (CONF:7726.CONF:8804)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityAct: 2.16.840.1.113883.10.20.22.4.39 -->

<pattern id="p-ProgressNote_3A_PlanOfCareActivityAct_moodCode_4_97_3-error_mdht" see="#p-ProgressNote_3A_PlanOfCareActivityAct_moodCode_4_97_3-error_mdht" name="p-ProgressNote_3A_PlanOfCareActivityAct_moodCode_4_97_3-error_mdht">
		<!--
			UML path: /PlanOfCareActivityAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection/entry/planOfCareActivityAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">
		<!--
			OCL: true
			Constraint name: PlanOfCareActivityActMoodCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.97.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Plan of Care moodCode (Act/Encounter/Procedure) 2.16.840.1.113883.11.20.9.23 STATIC (CONF:8539)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.moodCode.oclIsUndefined() and self.moodCode.oclIsKindOf(vocab::x_DocumentActMood) and 
let value : vocab::x_DocumentActMood = self.moodCode.oclAsType(vocab::x_DocumentActMood) in 
value = vocab::x_DocumentActMood::INT or value = vocab::x_DocumentActMood::ARQ or value = vocab::x_DocumentActMood::PRMS or value = vocab::x_DocumentActMood::PRP or value = vocab::x_DocumentActMood::RQO
			Constraint name: PlanOfCareActivityActMoodCode
		-->
	<assert test="@moodCode and @moodCode[. = 'INT' or . = 'ARQ' or . = 'PRMS' or . = 'PRP' or . = 'RQO']">Error: ProgressNote - 4.97.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Plan of Care moodCode (Act/Encounter/Procedure) 2.16.840.1.113883.11.20.9.23 STATIC (CONF:8539)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityAct: 2.16.840.1.113883.10.20.22.4.39 -->

<pattern id="p-ProgressNote_3A_PlanOfCareActivityAct_templateId_4_97_1-error_mdht" see="#p-ProgressNote_3A_PlanOfCareActivityAct_templateId_4_97_1-error_mdht" name="p-ProgressNote_3A_PlanOfCareActivityAct_templateId_4_97_1-error_mdht">
		<!--
			UML path: /PlanOfCareActivityAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection/entry/planOfCareActivityAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.39')
			Constraint name: PlanOfCareActivityActTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39'">Error: ProgressNote - 4.97.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8544, CONF:10510 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.39&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityAct: 2.16.840.1.113883.10.20.22.4.39 -->

<pattern id="p-ProgressNote_3A_PlanOfCareActivityAct_classCode_4_88_2-error_mdht" see="#p-ProgressNote_3A_PlanOfCareActivityAct_classCode_4_88_2-error_mdht" name="p-ProgressNote_3A_PlanOfCareActivityAct_classCode_4_88_2-error_mdht">
		<!--
			UML path: /PlanOfCareActivityAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection/entry/planOfCareActivityAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">
		<!--
			OCL: self.classCode=vocab::x_ActClassDocumentEntryAct::ACT
			Constraint name: PlanOfCareActivityActClassCode
		-->
	<assert test="@classCode = 'ACT'">Error: ProgressNote - 4.88.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;ACT&quot; Act (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:8538, R2.0=CONF:1098-8538)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityAct: 2.16.840.1.113883.10.20.22.4.39 -->

<pattern id="p-ProgressNote_3A_PlanOfCareActivityAct_id_4_88_4-error_mdht" see="#p-ProgressNote_3A_PlanOfCareActivityAct_id_4_88_4-error_mdht" name="p-ProgressNote_3A_PlanOfCareActivityAct_id_4_88_4-error_mdht">
		<!--
			UML path: /PlanOfCareActivityAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection/entry/planOfCareActivityAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: PlanOfCareActivityActId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.88.4 id
		Conformance: SHALL contain at least one [1..*] id (CONF:8546, R2.0=CONF:1098-8546)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_assessmentAndPlanSection_2_17_6_i_c_1-error_mdht" see="#p-ProgressNote_2_Component_assessmentAndPlanSection_2_17_6_i_c_1-error_mdht" name="p-ProgressNote_2_Component_assessmentAndPlanSection_2_17_6_i_c_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/assessmentAndPlanSection
			UML root path: /ProgressNote/component/structuredBody/assessmentAndPlanSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::AssessmentAndPlanSection))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentAssessmentAndPlanSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']) &lt;= 1">Error: ProgressNote - 2.17.6.i.c.1 assessmentAndPlanSection
		Conformance: MAY contain zero or one [0..1] section (CONF:8774)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssessmentAndPlanSection: 2.16.840.1.113883.10.20.22.2.9 -->

<pattern id="p-ProgressNote_2_AssessmentAndPlanSection_text_3_14_3-error_mdht" see="#p-ProgressNote_2_AssessmentAndPlanSection_text_3_14_3-error_mdht" name="p-ProgressNote_2_AssessmentAndPlanSection_text_3_14_3-error_mdht">
		<!--
			UML path: /AssessmentAndPlanSection
			UML root path: /ConsultationNote/component/structuredBody/assessmentAndPlanSection/assessmentAndPlanSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: AssessmentAndPlanSectionText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.14.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7707, R2.0=CONF:1098-7707)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssessmentAndPlanSection: 2.16.840.1.113883.10.20.22.2.9 -->

<pattern id="p-ProgressNote_2_AssessmentAndPlanSection_templateId_3_13_1-error_mdht" see="#p-ProgressNote_2_AssessmentAndPlanSection_templateId_3_13_1-error_mdht" name="p-ProgressNote_2_AssessmentAndPlanSection_templateId_3_13_1-error_mdht">
		<!--
			UML path: /AssessmentAndPlanSection
			UML root path: /ConsultationNote/component/structuredBody/assessmentAndPlanSection/assessmentAndPlanSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.9')
			Constraint name: AssessmentAndPlanSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'">Error: ProgressNote - 3.13.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7705, CONF:10381 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.9')
			Constraint name: AssessmentAndPlanSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'">Error: ProgressNote - 3.13.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7705, CONF:10381 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.9')
			Constraint name: AssessmentAndPlanSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'">Error: ProgressNote - 3.13.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7705, CONF:10381 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.9')
			Constraint name: AssessmentAndPlanSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'">Error: ProgressNote - 3.13.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7705, CONF:10381 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.9')
			Constraint name: AssessmentAndPlanSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'">Error: ProgressNote - 3.13.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7705, CONF:10381 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.9')
			Constraint name: AssessmentAndPlanSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'">Error: ProgressNote - 3.13.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7705, CONF:10381 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.9')
			Constraint name: AssessmentAndPlanSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'">Error: ProgressNote - 3.13.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7705, CONF:10381 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.9')
			Constraint name: AssessmentAndPlanSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'">Error: ProgressNote - 3.13.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7705, CONF:10381 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.9')
			Constraint name: AssessmentAndPlanSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9'">Error: ProgressNote - 3.13.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7705, CONF:10381 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssessmentAndPlanSection: 2.16.840.1.113883.10.20.22.2.9 -->

<pattern id="p-ProgressNote_3A_AssessmentAndPlanSection_entry_3_13_4-error_mdht" see="#p-ProgressNote_3A_AssessmentAndPlanSection_entry_3_13_4-error_mdht" name="p-ProgressNote_3A_AssessmentAndPlanSection_entry_3_13_4-error_mdht">
		<!--
			UML path: /AssessmentAndPlanSection
			UML root path: /ConsultationNote/component/structuredBody/assessmentAndPlanSection/assessmentAndPlanSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::AssessmentAndPlanSection::PlanOfCareActivityActEntry))
			Constraint name: AssessmentAndPlanSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.13.4 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssessmentAndPlanSection: 2.16.840.1.113883.10.20.22.2.9 -->

<pattern id="p-ProgressNote_2_AssessmentAndPlanSection_code_3_13_2-error_mdht" see="#p-ProgressNote_2_AssessmentAndPlanSection_code_3_13_2-error_mdht" name="p-ProgressNote_2_AssessmentAndPlanSection_code_3_13_2-error_mdht">
		<!--
			UML path: /AssessmentAndPlanSection
			UML root path: /ConsultationNote/component/structuredBody/assessmentAndPlanSection/assessmentAndPlanSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '51847-2' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: AssessmentAndPlanSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '51847-2' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.13.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15353)/@code=&quot;51847-2&quot; ASSESSMENT AND PLAN (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15354)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: AssessmentAndPlanSectionCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.13.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15353)/@code=&quot;51847-2&quot; ASSESSMENT AND PLAN (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15354)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityActEntry -->

<pattern id="p-ProgressNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_13_4_i-error_mdht" see="#p-ProgressNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_13_4_i-error_mdht" name="p-ProgressNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_13_4_i-error_mdht">
		<!--
			UML path: /AssessmentAndPlanSection/entry
			UML root path: /ConsultationNote/component/structuredBody/assessmentAndPlanSection/assessmentAndPlanSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']/cda:entry">
		<!--
			OCL: self.act->select(act : cda::Act | not act.oclIsUndefined() and act.oclIsKindOf(consol::PlanOfCareActivityAct))->size() >= 0
			Constraint name: AssessmentAndPlanSectionPlanOfCareActivityActEntryPlanOfCareActivityAct
		-->
	<assert test="count(cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']) &gt;= 0">Error: ProgressNote - 3.13.4.i planOfCareActivityAct
		Conformance: MAY contain zero or more [0..*] act (CONF:8798)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_allergiesSectionEntriesOptional_2_17_6_i_d_1-error_mdht" see="#p-ProgressNote_2_Component_allergiesSectionEntriesOptional_2_17_6_i_d_1-error_mdht" name="p-ProgressNote_2_Component_allergiesSectionEntriesOptional_2_17_6_i_d_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/allergiesSectionEntriesOptional
			UML root path: /ProgressNote/component/structuredBody/allergiesSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::AllergiesSectionEntriesOptional))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentAllergiesSectionEntriesOptional
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']) &lt;= 1">Error: ProgressNote - 2.17.6.i.d.1 allergiesSectionEntriesOptional
		Conformance: MAY contain zero or one [0..1] section (CONF:8773)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergiesSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.6 -->

<pattern id="p-ProgressNote_2_AllergiesSectionEntriesOptional_title_3_10_3-error_mdht" see="#p-ProgressNote_2_AllergiesSectionEntriesOptional_title_3_10_3-error_mdht" name="p-ProgressNote_2_AllergiesSectionEntriesOptional_title_3_10_3-error_mdht">
		<!--
			UML path: /AllergiesSectionEntriesOptional
			UML root path: /DischargeSummary/component/structuredBody/allergiesSectionEntriesOptional/allergiesSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: AllergiesSectionEntriesOptionalTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.10.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:7802, R2.1=CONF:1198-7802)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergiesSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.6 -->

<pattern id="p-ProgressNote_2_AllergiesSectionEntriesOptional_text_3_10_4-error_mdht" see="#p-ProgressNote_2_AllergiesSectionEntriesOptional_text_3_10_4-error_mdht" name="p-ProgressNote_2_AllergiesSectionEntriesOptional_text_3_10_4-error_mdht">
		<!--
			UML path: /AllergiesSectionEntriesOptional
			UML root path: /DischargeSummary/component/structuredBody/allergiesSectionEntriesOptional/allergiesSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: AllergiesSectionEntriesOptionalText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.10.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7803, R2.1=CONF:1198-7803)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergiesSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.6 -->

<pattern id="p-ProgressNote_2_AllergiesSectionEntriesOptional_code_3_9_2-error_mdht" see="#p-ProgressNote_2_AllergiesSectionEntriesOptional_code_3_9_2-error_mdht" name="p-ProgressNote_2_AllergiesSectionEntriesOptional_code_3_9_2-error_mdht">
		<!--
			UML path: /AllergiesSectionEntriesOptional
			UML root path: /DischargeSummary/component/structuredBody/allergiesSectionEntriesOptional/allergiesSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '48765-2' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: AllergiesSectionEntriesOptionalCode
		-->
	<assert test="cda:code and cda:code[@code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.9.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15345)/@code=&quot;48765-2&quot; Allergies, adverse reactions, alerts (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15346)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: AllergiesSectionEntriesOptionalCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.9.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15345)/@code=&quot;48765-2&quot; Allergies, adverse reactions, alerts (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15346)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergiesSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.6 -->

<pattern id="p-ProgressNote_3A_AllergiesSectionEntriesOptional_entry_3_9_5-error_mdht" see="#p-ProgressNote_3A_AllergiesSectionEntriesOptional_entry_3_9_5-error_mdht" name="p-ProgressNote_3A_AllergiesSectionEntriesOptional_entry_3_9_5-error_mdht">
		<!--
			UML path: /AllergiesSectionEntriesOptional
			UML root path: /DischargeSummary/component/structuredBody/allergiesSectionEntriesOptional/allergiesSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::AllergiesSectionEntriesOptional::AllergyProblemActEntry))
			Constraint name: AllergiesSectionEntriesOptionalEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.9.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergiesSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.6 -->

<pattern id="p-ProgressNote_2_AllergiesSectionEntriesOptional_templateId_3_9_1-error_mdht" see="#p-ProgressNote_2_AllergiesSectionEntriesOptional_templateId_3_9_1-error_mdht" name="p-ProgressNote_2_AllergiesSectionEntriesOptional_templateId_3_9_1-error_mdht">
		<!--
			UML path: /AllergiesSectionEntriesOptional
			UML root path: /DischargeSummary/component/structuredBody/allergiesSectionEntriesOptional/allergiesSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.6')
			Constraint name: AllergiesSectionEntriesOptionalTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6'">Error: ProgressNote - 3.9.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7800, CONF:10378 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.6&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyProblemActEntry -->

<pattern id="p-ProgressNote_3A_AllergyProblemActEntry_allergyProblemAct_3_9_5_i-error_mdht" see="#p-ProgressNote_3A_AllergyProblemActEntry_allergyProblemAct_3_9_5_i-error_mdht" name="p-ProgressNote_3A_AllergyProblemActEntry_allergyProblemAct_3_9_5_i-error_mdht">
		<!--
			UML path: /AllergiesSectionEntriesOptional/entry
			UML root path: /DischargeSummary/component/structuredBody/allergiesSectionEntriesOptional/allergiesSectionEntriesOptional/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']/cda:entry">
		<!--
			OCL: self.act->select(act : cda::Act | not act.oclIsUndefined() and act.oclIsKindOf(consol::AllergyProblemAct))->size() >= 0
			Constraint name: AllergiesSectionEntriesOptionalAllergyProblemActEntryAllergyProblemAct
		-->
	<assert test="count(cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']) &gt;= 0">Error: ProgressNote - 3.9.5.i allergyProblemAct
		Conformance: SHOULD contain zero or more [0..*] act (CONF:7804, CONF:7805)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyProblemAct: 2.16.840.1.113883.10.20.22.4.30 -->

<pattern id="p-ProgressNote_3A_AllergyProblemAct_classCode_4_7_2-error_mdht" see="#p-ProgressNote_3A_AllergyProblemAct_classCode_4_7_2-error_mdht" name="p-ProgressNote_3A_AllergyProblemAct_classCode_4_7_2-error_mdht">
		<!--
			UML path: /AllergyProblemAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">
		<!--
			OCL: self.classCode=vocab::x_ActClassDocumentEntryAct::ACT
			Constraint name: AllergyProblemActClassCode
		-->
	<assert test="@classCode = 'ACT'">Error: ProgressNote - 4.7.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;ACT&quot; Act (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7469, R2.1=CONF:1198-7469)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyProblemAct: 2.16.840.1.113883.10.20.22.4.30 -->

<pattern id="p-ProgressNote_3A_AllergyProblemAct_effectiveTime_4_7_7-error_mdht" see="#p-ProgressNote_3A_AllergyProblemAct_effectiveTime_4_7_7-error_mdht" name="p-ProgressNote_3A_AllergyProblemAct_effectiveTime_4_7_7-error_mdht">
		<!--
			UML path: /AllergyProblemAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: AllergyProblemActEffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: ProgressNote - 4.7.7 effectiveTime
		Conformance: SHALL contain exactly one [1..1] effectiveTime (CONF:7498, R2.1=CONF:1198-7498)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyProblemAct: 2.16.840.1.113883.10.20.22.4.30 -->

<pattern id="p-ProgressNote_3A_AllergyProblemAct_moodCode_4_7_3-error_mdht" see="#p-ProgressNote_3A_AllergyProblemAct_moodCode_4_7_3-error_mdht" name="p-ProgressNote_3A_AllergyProblemAct_moodCode_4_7_3-error_mdht">
		<!--
			UML path: /AllergyProblemAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">
		<!--
			OCL: self.moodCode=vocab::x_DocumentActMood::EVN
			Constraint name: AllergyProblemActMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.7.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7470, R2.1=CONF:1198-7470)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyProblemAct: 2.16.840.1.113883.10.20.22.4.30 -->

<pattern id="p-ProgressNote_3A_AllergyProblemAct_templateId_4_10_1-error_mdht" see="#p-ProgressNote_3A_AllergyProblemAct_templateId_4_10_1-error_mdht" name="p-ProgressNote_3A_AllergyProblemAct_templateId_4_10_1-error_mdht">
		<!--
			UML path: /AllergyProblemAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.30')
			Constraint name: AllergyProblemActTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30'">Error: ProgressNote - 4.10.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7471, CONF:10489 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.30&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyProblemAct: 2.16.840.1.113883.10.20.22.4.30 -->

<pattern id="p-ProgressNote_3A_AllergyProblemAct_statusCode_4_7_6-error_mdht" see="#p-ProgressNote_3A_AllergyProblemAct_statusCode_4_7_6-error_mdht" name="p-ProgressNote_3A_AllergyProblemAct_statusCode_4_7_6-error_mdht">
		<!--
			UML path: /AllergyProblemAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">
		<!--
			OCL: true
			Constraint name: AllergyProblemActStatusCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.7.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode, which SHALL be selected from ValueSet ProblemActStatusCode 2.16.840.1.113883.11.20.9.19 STATIC 2011-09-09 (CONF:7485, R2.1=CONF:1198-7485, R2.1=CONF:1198-19086)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'active' or value.code = 'suspended' or value.code = 'aborted' or value.code = 'completed'
			Constraint name: AllergyProblemActStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'active' or @code = 'suspended' or @code = 'aborted' or @code = 'completed']">Error: ProgressNote - 4.7.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode, which SHALL be selected from ValueSet ProblemActStatusCode 2.16.840.1.113883.11.20.9.19 STATIC 2011-09-09 (CONF:7485, R2.1=CONF:1198-7485, R2.1=CONF:1198-19086)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyProblemAct: 2.16.840.1.113883.10.20.22.4.30 -->

<pattern id="p-ProgressNote_3A_AllergyProblemAct_AllergyProblemActEffectiveTimeLow_4_10_9-error_mdht" see="#p-ProgressNote_3A_AllergyProblemAct_AllergyProblemActEffectiveTimeLow_4_10_9-error_mdht" name="p-ProgressNote_3A_AllergyProblemAct_AllergyProblemActEffectiveTimeLow_4_10_9-error_mdht">
		<!--
			UML path: /AllergyProblemAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">
		<!--
			OCL: (self.statusCode.code = 'active') implies not self.effectiveTime.low.oclIsUndefined()
			Constraint name: AllergyProblemActEffectiveTimeLow
		-->
	<assert test="not(cda:statusCode/@code = 'active') or cda:effectiveTime/cda:low">Error: ProgressNote - 4.10.9 AllergyProblemActEffectiveTimeLow
		Conformance: SHALL satisfy: AllergyProblemActEffectiveTimeLow (CONF:7504, R2.1=CONF:1198-7504)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyProblemAct: 2.16.840.1.113883.10.20.22.4.30 -->

<pattern id="p-ProgressNote_3A_AllergyProblemAct_id_4_7_4-error_mdht" see="#p-ProgressNote_3A_AllergyProblemAct_id_4_7_4-error_mdht" name="p-ProgressNote_3A_AllergyProblemAct_id_4_7_4-error_mdht">
		<!--
			UML path: /AllergyProblemAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: AllergyProblemActId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.7.4 id
		Conformance: SHALL contain at least one [1..*] id (CONF:7472, R2.1=CONF:1198-7472)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyProblemAct: 2.16.840.1.113883.10.20.22.4.30 -->

<pattern id="p-ProgressNote_3A_AllergyProblemAct_code_4_10_5-error_mdht" see="#p-ProgressNote_3A_AllergyProblemAct_code_4_10_5-error_mdht" name="p-ProgressNote_3A_AllergyProblemAct_code_4_10_5-error_mdht">
		<!--
			UML path: /AllergyProblemAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: AllergyProblemActCode
		-->
	<assert test="cda:code">Error: ProgressNote - 4.10.5 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:NEW)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyProblemAct: 2.16.840.1.113883.10.20.22.4.30 -->

<pattern id="p-ProgressNote_3A_AllergyProblemAct_entryRelationship_4_10_8-error_mdht" see="#p-ProgressNote_3A_AllergyProblemAct_entryRelationship_4_10_8-error_mdht" name="p-ProgressNote_3A_AllergyProblemAct_entryRelationship_4_10_8-error_mdht">
		<!--
			UML path: /AllergyProblemAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::AllergyProblemAct::AllergyObservationEntryRelationship))
			Constraint name: AllergyProblemActEntryRelationship
		-->
	<assert test="count(cda:entryRelationship[cda:observation/cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7'])=1">Error: ProgressNote - 4.10.8 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- CD -->

<pattern id="p-ProgressNote_3A_CD_AllergyProblemActCDCodeAndCodeSystemValues_4_10_5_iii-error_mdht" see="#p-ProgressNote_3A_CD_AllergyProblemActCDCodeAndCodeSystemValues_4_10_5_iii-error_mdht" name="p-ProgressNote_3A_CD_AllergyProblemActCDCodeAndCodeSystemValues_4_10_5_iii-error_mdht">
		<!--
			UML path: /AllergyProblemAct/code
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/code
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:code">
		<!--
			OCL: (code = 'CONC' and codeSystem = '2.16.840.1.113883.5.6') or (code = '48765-2' and codeSystem = '2.16.840.1.113883.6.1')
			Constraint name: AllergyProblemActCDCodeAndCodeSystemValues
		-->
	<assert test="@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6' or @code = '48765-2' and @codeSystem = '2.16.840.1.113883.6.1'">Error: ProgressNote - 4.10.5.iii AllergyProblemActCDCodeAndCodeSystemValues
		Conformance: /@code SHALL=&quot;CONC&quot; Concern (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) or code/@code SHALL=&quot;48765-2&quot; Allergies, adverse reactions, alerts (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC) (CONF:NEW)
		Analysis: /@code SHALL=&quot;CONC&quot; Concern (CodeSystem: HL7ActClass 2.16.840.1.113883.5.6) or code/@code SHALL=&quot;48765-2&quot; Allergies, adverse reactions, alerts (CodeSystem: LOINC 2.16.840.1.113883.6.1 STATIC)
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- CD -->

<pattern id="p-ProgressNote_3A_CD_codeSystem_4_10_5_ii-error_mdht" see="#p-ProgressNote_3A_CD_codeSystem_4_10_5_ii-error_mdht" name="p-ProgressNote_3A_CD_codeSystem_4_10_5_ii-error_mdht">
		<!--
			UML path: /AllergyProblemAct/code
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/code
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:code">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (not self.codeSystem.oclIsUndefined() ))
			Constraint name: AllergyProblemActCDCodeSystem
		-->
	<assert test="@nullFlavor or @codeSystem">Error: ProgressNote - 4.10.5.ii codeSystem
		Conformance: SHALL contain exactly one [1..1] codeSystem (CONF:NEW)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- CD -->

<pattern id="p-ProgressNote_3A_CD_code_4_10_5_i-error_mdht" see="#p-ProgressNote_3A_CD_code_4_10_5_i-error_mdht" name="p-ProgressNote_3A_CD_code_4_10_5_i-error_mdht">
		<!--
			UML path: /AllergyProblemAct/code
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/code
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:code">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (not self.code.oclIsUndefined() ))
			Constraint name: AllergyProblemActCDCode
		-->
	<assert test="@nullFlavor or @code">Error: ProgressNote - 4.10.5.i code
		Conformance: SHALL contain exactly one [1..1] code (CONF:NEW)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservationEntryRelationship -->

<pattern id="p-ProgressNote_3A_AllergyObservationEntryRelationship_allergyObservation_4_10_8_i-error_mdht" see="#p-ProgressNote_3A_AllergyObservationEntryRelationship_allergyObservation_4_10_8_i-error_mdht" name="p-ProgressNote_3A_AllergyObservationEntryRelationship_allergyObservation_4_10_8_i-error_mdht">
		<!--
			UML path: /AllergyProblemAct/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship">
		<!--
			OCL: self.observation->exists(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::AllergyObservation))
			Constraint name: AllergyProblemActAllergyObservationEntryRelationshipAllergyObservation
		-->
	<assert test="cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Error: ProgressNote - 4.10.8.i allergyObservation
		Conformance: SHALL contain at least one [1..*] observation (CONF:7509, CONF:7915, CONF:14925)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_participant_4_8_10-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_participant_4_8_10-error_mdht" name="p-ProgressNote_3A_AllergyObservation_participant_4_8_10-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.participant->select(participant : cda::Participant2 | not participant.oclIsUndefined() and participant.oclIsKindOf(cda::Participant2))->size() <= 1
			Constraint name: AllergyObservationParticipant
		-->
	<assert test="count(cda:participant) &lt;= 1">Error: ProgressNote - 4.8.10 participant
		Conformance: SHOULD contain zero or one [0..1] participant (CONF:7402)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_13-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_13-error_mdht" name="p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_13-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::AllergyObservation::SeverityObservationEntryRelationship))
			Constraint name: AllergyObservationEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.8.13 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_statusCode_4_8_7-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_statusCode_4_8_7-error_mdht" name="p-ProgressNote_3A_AllergyObservation_statusCode_4_8_7-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: true
			Constraint name: AllergyObservationStatusCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.8.7 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7386)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed'
			Constraint name: AllergyObservationStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: ProgressNote - 4.8.7 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7386)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_templateId_4_8_1-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_templateId_4_8_1-error_mdht" name="p-ProgressNote_3A_AllergyObservation_templateId_4_8_1-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.7')
			Constraint name: SubstanceOrDeviceAllergyObservationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7'">Error: ProgressNote - 4.8.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7381, CONF:10488 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.7&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_classCode_4_9_3-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_classCode_4_9_3-error_mdht" name="p-ProgressNote_3A_AllergyObservation_classCode_4_9_3-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: AllergyObservationClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: ProgressNote - 4.9.3 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7379, R2.0=CONF:1098-7379)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_value_4_8_9-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_value_4_8_9-error_mdht" name="p-ProgressNote_3A_AllergyObservation_value_4_8_9-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: true
			Constraint name: AllergyObservationValueP
		-->
	<assert test="true()">Error: ProgressNote - 4.8.9 value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;CD&quot;, which SHALL be selected from ValueSet Allergy/Adverse Event Type 2.16.840.1.113883.3.88.12.3221.6.2 DYNAMIC (CONF:7390, CONF:9139)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = element.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and (value.code = '420134006' or value.code = '418038007' or value.code = '419511003' or value.code = '418471000' or value.code = '419199007' or value.code = '416098002' or value.code = '414285001' or value.code = '59037007' or value.code = '235719002' or value.code = '232347008' or value.code = '426232007'))
			Constraint name: AllergyObservationValue
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(. and @xsi:type='CD' and @codeSystem = '2.16.840.1.113883.6.96' and (@code = '420134006' or @code = '418038007' or @code = '419511003' or @code = '418471000' or @code = '419199007' or @code = '416098002' or @code = '414285001' or @code = '59037007' or @code = '235719002' or @code = '232347008' or @code = '426232007'))])">Error: ProgressNote - 4.8.9 value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;CD&quot;, which SHALL be selected from ValueSet Allergy/Adverse Event Type 2.16.840.1.113883.3.88.12.3221.6.2 DYNAMIC (CONF:7390, CONF:9139)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_SubstanceOrDeviceAllergyObservationReactionInversionIndicator_4_8_20-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_SubstanceOrDeviceAllergyObservationReactionInversionIndicator_4_8_20-error_mdht" name="p-ProgressNote_3A_AllergyObservation_SubstanceOrDeviceAllergyObservationReactionInversionIndicator_4_8_20-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.entryRelationship->select(er : cda::EntryRelationship | er.observation.oclIsTypeOf(consol::ReactionObservation))->forAll(ent : cda::EntryRelationship | ent.inversionInd=true)
			Constraint name: SubstanceOrDeviceAllergyObservationReactionInversionIndicator
		-->
	<assert test="not(cda:entryRelationship[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.9'][not(@inversionInd = 'true')])">Error: ProgressNote - 4.8.20 SubstanceOrDeviceAllergyObservationReactionInversionIndicator
		Conformance: entryRelationship with target entry Reaction Observation SHALL contain exactly one [1..1] @inversionInd=&quot;true&quot; True (CONF:7449)
		Analysis: entryRelationship with target entry Reaction Observation SHALL contain exactly one [1..1] @inversionInd=&quot;true&quot; True
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_moodCode_4_9_4-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_moodCode_4_9_4-error_mdht" name="p-ProgressNote_3A_AllergyObservation_moodCode_4_9_4-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: AllergyObservationMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.9.4 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7380, R2.0=CONF:1098-7380)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_code_4_8_6-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_code_4_8_6-error_mdht" name="p-ProgressNote_3A_AllergyObservation_code_4_8_6-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: AllergyObservationCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.8.6 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15947)/@code=&quot;ASSERTION&quot;  (CodeSystem: 2.16.840.1.113883.5.4 HL7ActCode) (CONF:15948)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = 'ASSERTION' and value.codeSystem = '2.16.840.1.113883.5.4'
			Constraint name: AllergyObservationCode
		-->
	<assert test="cda:code and cda:code[@code = 'ASSERTION' and @codeSystem = '2.16.840.1.113883.5.4']">Error: ProgressNote - 4.8.6 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15947)/@code=&quot;ASSERTION&quot;  (CodeSystem: 2.16.840.1.113883.5.4 HL7ActCode) (CONF:15948)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_effectiveTime_4_8_8-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_effectiveTime_4_8_8-error_mdht" name="p-ProgressNote_3A_AllergyObservation_effectiveTime_4_8_8-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: AllergyObservationEffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: ProgressNote - 4.8.8 effectiveTime
		Conformance: SHALL contain exactly one [1..1] effectiveTime (CONF:7387)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_AllergyObservationValueOriginalText_4_8_16-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_AllergyObservationValueOriginalText_4_8_16-error_mdht" name="p-ProgressNote_3A_AllergyObservation_AllergyObservationValueOriginalText_4_8_16-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.value.oclAsType(datatypes::CD).originalText->size() = 1
			Constraint name: AllergyObservationValueOriginalText
		-->
	<assert test="count(cda:value/./cda:originalText) = 1">Error: ProgressNote - 4.8.16 AllergyObservationValueOriginalText
		Conformance: value SHOULD contain zero or one [0..1] originalText (CONF:7422)
		Analysis: value SHOULD contain zero or one [0..1] originalText
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_11-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_11-error_mdht" name="p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_11-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::AllergyObservation::AllergyStatusObservationEntryRelationship))
			Constraint name: AllergyObservationEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.8.11 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_SubstanceOrDeviceAllergyObservationAllergyStatusInversionIndicator_4_8_19-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_SubstanceOrDeviceAllergyObservationAllergyStatusInversionIndicator_4_8_19-error_mdht" name="p-ProgressNote_3A_AllergyObservation_SubstanceOrDeviceAllergyObservationAllergyStatusInversionIndicator_4_8_19-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.entryRelationship->select(er : cda::EntryRelationship | er.observation.oclIsTypeOf(consol::AllergyStatusObservation))->forAll(ent : cda::EntryRelationship | ent.inversionInd=true)
			Constraint name: SubstanceOrDeviceAllergyObservationAllergyStatusInversionIndicator
		-->
	<assert test="not(cda:entryRelationship[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28'][not(@inversionInd = 'true')])">Error: ProgressNote - 4.8.19 SubstanceOrDeviceAllergyObservationAllergyStatusInversionIndicator
		Conformance: entryRelationship with target entry AllergyStatusObservation SHALL contain exactly one [1..1] @inversionInd=&quot;true&quot; True (CONF:7446)
		Analysis: entryRelationship with target entry AllergyStatusObservation SHALL contain exactly one [1..1] @inversionInd=&quot;true&quot; True
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_12-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_12-error_mdht" name="p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_12-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::AllergyObservation::ReactionObservationEntryRelationship))
			Constraint name: AllergyObservationEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.8.12 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_AllergyObservationReferenceValue_4_8_18-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_AllergyObservationReferenceValue_4_8_18-error_mdht" name="p-ProgressNote_3A_AllergyObservation_AllergyObservationReferenceValue_4_8_18-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: not self.code.originalText.reference.value.oclIsUndefined() implies not self.getSection().text.getText(self.code.originalText.reference.value.substring(2, self.code.originalText.reference.value.size())).oclIsUndefined()
			Constraint name: AllergyObservationReferenceValue
		-->
	<assert test="not(cda:code/cda:originalText/cda:reference/@value) or string(ancestor::cda:section[1]/cda:text[@id=substring(cda:code/cda:originalText/cda:reference/@value,2,string-length(cda:code/cda:originalText/cda:reference/@value)-2)]// text())">Error: ProgressNote - 4.8.18 AllergyObservationReferenceValue
		Conformance: reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (CONF:15951)
		Analysis: reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_AllergyObservationOriginalTextReference_4_8_17-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_AllergyObservationOriginalTextReference_4_8_17-error_mdht" name="p-ProgressNote_3A_AllergyObservation_AllergyObservationOriginalTextReference_4_8_17-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: self.value.oclAsType(datatypes::CD).originalText->size() = 1 implies self.value.oclAsType(datatypes::CD).originalText->one(reference->size() = 1)
			Constraint name: AllergyObservationOriginalTextReference
		-->
	<assert test="not(count(cda:value/./cda:originalText) = 1) or count(cda:value/./cda:originalText[count(cda:reference) = 1])=1">Error: ProgressNote - 4.8.17 AllergyObservationOriginalTextReference
		Conformance: originalText, if present, MAY contain zero or one [0..1] reference (CONF:15949)
		Analysis: originalText, if present, MAY contain zero or one [0..1] reference
		Validation message: n/a	</assert>
		<!--
			OCL: self.value.oclAsType(datatypes::CD).originalText.reference->size() = 1 implies self.value.oclAsType(datatypes::CD).originalText.reference.value->size() = 1
			Constraint name: AllergyObservationOriginalTextReferenceValue
		-->
	<assert test="not(count(cda:value/./cda:originalText/cda:reference) = 1) or count(cda:value/./cda:originalText/cda:reference/@value) = 1">Error: ProgressNote - 4.8.17 AllergyObservationOriginalTextReference
		Conformance: originalText, if present, MAY contain zero or one [0..1] reference (CONF:15949)
		Analysis: reference, if present, SHOULD contain zero or one [0..1] reference/@value
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyObservation: 2.16.840.1.113883.10.20.22.4.7 -->

<pattern id="p-ProgressNote_3A_AllergyObservation_id_4_9_5-error_mdht" see="#p-ProgressNote_3A_AllergyObservation_id_4_9_5-error_mdht" name="p-ProgressNote_3A_AllergyObservation_id_4_9_5-error_mdht">
		<!--
			UML path: /AllergyObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: AllergyObservationId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.9.5 id
		Conformance: SHALL contain at least one [1..*] id (CONF:7382, R2.0=CONF:1098-7382)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Participant -->

<pattern id="p-ProgressNote_3A_Participant_typeCode_4_9_9_i-error_mdht" see="#p-ProgressNote_3A_Participant_typeCode_4_9_9_i-error_mdht" name="p-ProgressNote_3A_Participant_typeCode_4_9_9_i-error_mdht">
		<!--
			UML path: /AllergyObservation/participant
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/participant
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant">
		<!--
			OCL: true
			Constraint name: AllergyObservationParticipantTypeCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.9.9.i typeCode
		Conformance: SHALL contain exactly one [1..1] @typeCode/@code=&quot;CSM&quot; Consumable (CodeSystem: 2.16.840.1.113883.5.90 HL7ParticipationType) (CONF:7403, R2.0=CONF:1098-7403)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.typeCode.oclIsUndefined() and self.typeCode.oclIsKindOf(vocab::ParticipationType) and 
let value : vocab::ParticipationType = self.typeCode.oclAsType(vocab::ParticipationType) in 
value = vocab::ParticipationType::CSM
			Constraint name: AllergyObservationParticipantTypeCode
		-->
	<assert test="@typeCode and @typeCode[. = 'CSM']">Error: ProgressNote - 4.9.9.i typeCode
		Conformance: SHALL contain exactly one [1..1] @typeCode/@code=&quot;CSM&quot; Consumable (CodeSystem: 2.16.840.1.113883.5.90 HL7ParticipationType) (CONF:7403, R2.0=CONF:1098-7403)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Participant -->

<pattern id="p-ProgressNote_3A_Participant_participantRole__viii_b-error_mdht" see="#p-ProgressNote_3A_Participant_participantRole__viii_b-error_mdht" name="p-ProgressNote_3A_Participant_participantRole__viii_b-error_mdht">
		<!--
			UML path: /AllergyObservation/participant
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/participant
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant">
		<!--
			OCL: self.participantRole->one(participantRole : cda::ParticipantRole | not participantRole.oclIsUndefined() and participantRole.oclIsKindOf(consol::AllergyObservation::Participant::ParticipantRole))
			Constraint name: AllergyObservationParticipantParticipantRole
		-->
	<assert test="count(cda:participantRole[cda:playingEntity/@classCode = 'MMAT'])=1">Error: ProgressNote - ?.viii.b participantRole
		Conformance: contain exactly one [1..1] participantRole
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ParticipantRole -->

<pattern id="p-ProgressNote_3A_ParticipantRole_classCode__viii_b_1-error_mdht" see="#p-ProgressNote_3A_ParticipantRole_classCode__viii_b_1-error_mdht" name="p-ProgressNote_3A_ParticipantRole_classCode__viii_b_1-error_mdht">
		<!--
			UML path: /AllergyObservation/participant/participantRole
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/participant/participantRole
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole">
		<!--
			OCL: true
			Constraint name: AllergyObservationParticipantParticipantRoleClassCodeP
		-->
	<assert test="true()">Error: ProgressNote - ?.viii.b.1 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode/@code=&quot;MANU&quot; Manufactured Product (CodeSystem: 2.16.840.1.113883.5.110 HL7RoleClass) (CONF:7405, R2.0=CONF:1098-7405)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.classCode.oclIsUndefined() and self.classCode.oclIsKindOf(vocab::RoleClassRoot) and  let value : vocab::RoleClassRoot = self.classCode.oclAsType(vocab::RoleClassRoot) in  value = vocab::RoleClassRoot::MANU
			Constraint name: AllergyObservationParticipantParticipantRoleClassCode
		-->
	<assert test="@classCode and @classCode[. = 'MANU']">Error: ProgressNote - ?.viii.b.1 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode/@code='MANU' Manufactured Product (CodeSystem: 2.16.840.1.113883.5.110 HL7RoleClass) (CONF:7405, R2.0=CONF:1098-7405)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ParticipantRole -->

<pattern id="p-ProgressNote_3A_ParticipantRole_playingEntity__viii_b_2-error_mdht" see="#p-ProgressNote_3A_ParticipantRole_playingEntity__viii_b_2-error_mdht" name="p-ProgressNote_3A_ParticipantRole_playingEntity__viii_b_2-error_mdht">
		<!--
			UML path: /AllergyObservation/participant/participantRole
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/participant/participantRole
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole">
		<!--
			OCL: self.playingEntity->one(playingEntity : cda::PlayingEntity | not playingEntity.oclIsUndefined() and playingEntity.oclIsKindOf(consol::AllergyObservation::Participant::ParticipantRole::PlayingEntity))
			Constraint name: AllergyObservationParticipantParticipantRolePlayingEntity
		-->
	<assert test="count(cda:playingEntity)=1">Error: ProgressNote - ?.viii.b.2 playingEntity
		Conformance: contain exactly one [1..1] playingEntity
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlayingEntity -->

<pattern id="p-ProgressNote_3A_PlayingEntity_code__viii_b_2_ii-error_mdht" see="#p-ProgressNote_3A_PlayingEntity_code__viii_b_2_ii-error_mdht" name="p-ProgressNote_3A_PlayingEntity_code__viii_b_2_ii-error_mdht">
		<!--
			UML path: /AllergyObservation/participant/participantRole/playingEntity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/participant/participantRole/playingEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole/cda:playingEntity">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: AllergyObservationParticipantParticipantRolePlayingEntityCode
		-->
	<assert test="cda:code">Error: ProgressNote - ?.viii.b.2.ii code
		Conformance: SHALL contain exactly one [1..1] code (CONF:7419)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlayingEntity -->

<pattern id="p-ProgressNote_3A_PlayingEntity_AllergyObservationParticipantParticipantRolePlayingEntityCodeTerminologyValueSetGroupSRFI__viii_b_2_iii-error_mdht" see="#p-ProgressNote_3A_PlayingEntity_AllergyObservationParticipantParticipantRolePlayingEntityCodeTerminologyValueSetGroupSRFI__viii_b_2_iii-error_mdht" name="p-ProgressNote_3A_PlayingEntity_AllergyObservationParticipantParticipantRolePlayingEntityCodeTerminologyValueSetGroupSRFI__viii_b_2_iii-error_mdht">
		<!--
			UML path: /AllergyObservation/participant/participantRole/playingEntity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/participant/participantRole/playingEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole/cda:playingEntity">
		<!--
			OCL: ( code.oclIsUndefined() or code.isNullFlavorUndefined() ) implies ( not code.oclIsUndefined() and code.oclIsKindOf(datatypes::CE) and ( ( let value : datatypes::CE = code.oclAsType(datatypes::CE) in value.codeSystem = '2.16.840.1.113883.3.26.1.5' and not value.code.oclIsUndefined() ) or ( let value : datatypes::CE = code.oclAsType(datatypes::CE) in value.codeSystem = '2.16.840.1.113883.6.88' and not value.code.oclIsUndefined() ) or ( let value : datatypes::CE = code.oclAsType(datatypes::CE) in value.codeSystem = '2.16.840.1.113883.4.9' and not value.code.oclIsUndefined() ) or ( let value : datatypes::CE = code.oclAsType(datatypes::CE) in value.codeSystem = '2.16.840.1.113883.6.96' and not value.code.oclIsUndefined() ) ) )
			Constraint name: AllergyObservationParticipantParticipantRolePlayingEntityCodeTerminologyValueSetGroupSRFI
		-->
	<assert test="not(not(cda:code) or not(cda:code/@nullFlavor)) or cda:code and (cda:code[@codeSystem = '2.16.840.1.113883.3.26.1.5' and @code] or cda:code[@codeSystem = '2.16.840.1.113883.6.88' and @code] or cda:code[@codeSystem = '2.16.840.1.113883.4.9' and @code] or cda:code[@codeSystem = '2.16.840.1.113883.6.96' and @code])">Error: ProgressNote - ?.viii.b.2.iii AllergyObservationParticipantParticipantRolePlayingEntityCodeTerminologyValueSetGroupSRFI
		Conformance: code SHALL be selected from ValueSet Substance-Reactant for Intolerance 2.16.840.1.113762.1.4.1010.1 DYNAMIC. Note: Value set intentionally defined as a GROUPING made up of: Value Set: Medication Drug Class (2.16.840.1.113883.3.88.12.80.18) (NDFRT drug class codes); Value Set: Clinical Drug Ingredient (2.16.840.1.113762.1.4.1010.7) (RxNORM ingredient codes); Value Set: Unique Ingredient Identifier - Complete Set (2.16.840.1.113883.3.88.12.80.20) (UNII ingredient codes); Value Set: Substance Other Than Clinical Drug (2.16.840.1.113762.1.4.1010.9) (SNOMED CT substance codes). (CONF:7419)
		Analysis: code SHALL be selected from ValueSet Substance-Reactant for Intolerance 2.16.840.1.113762.1.4.1010.1 DYNAMIC. Note: Value set intentionally defined as a GROUPING made up of: Value Set: Medication Drug Class (2.16.840.1.113883.3.88.12.80.18) (NDFRT drug class codes); Value Set: Clinical Drug Ingredient (2.16.840.1.113762.1.4.1010.7) (RxNORM ingredient codes); Value Set: Unique Ingredient Identifier - Complete Set (2.16.840.1.113883.3.88.12.80.20) (UNII ingredient codes); Value Set: Substance Other Than Clinical Drug (2.16.840.1.113762.1.4.1010.9) (SNOMED CT substance codes).
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlayingEntity -->

<pattern id="p-ProgressNote_3A_PlayingEntity_classCode__viii_b_2_i-error_mdht" see="#p-ProgressNote_3A_PlayingEntity_classCode__viii_b_2_i-error_mdht" name="p-ProgressNote_3A_PlayingEntity_classCode__viii_b_2_i-error_mdht">
		<!--
			UML path: /AllergyObservation/participant/participantRole/playingEntity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/participant/participantRole/playingEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole/cda:playingEntity">
		<!--
			OCL: isDefined('classCode') and self.classCode=vocab::EntityClassRoot::MMAT
			Constraint name: AllergyObservationParticipantParticipantRolePlayingEntityClassCode
		-->
	<assert test="attribute::node()[name() = 'classCode'] and @classCode = 'MMAT'">Error: ProgressNote - ?.viii.b.2.i classCode
		Conformance: SHALL contain exactly one [1..1] @classCode='MMAT'  (CONF:7407, R2.0=CONF:7407)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- CE -->

<pattern id="p-ProgressNote_3A_CE_originalText__viii_b_2_ii_a-error_mdht" see="#p-ProgressNote_3A_CE_originalText__viii_b_2_ii_a-error_mdht" name="p-ProgressNote_3A_CE_originalText__viii_b_2_ii_a-error_mdht">
		<!--
			UML path: /AllergyObservation/participant/participantRole/playingEntity/code
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/participant/participantRole/playingEntity/code
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole/cda:playingEntity/cda:code">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.originalText.oclIsUndefined()) and self.originalText.isNullFlavorUndefined()) implies (not self.originalText.oclIsUndefined()) ))
			Constraint name: AllergyObservationParticipantParticipantRolePlayingEntityCEOriginalText
		-->
	<assert test="@nullFlavor or not(cda:originalText and not(cda:originalText/@nullFlavor)) or cda:originalText">Error: ProgressNote - ?.viii.b.2.ii.a originalText
		Conformance: SHOULD contain zero or one [0..1] originalText (CONF:7424)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- CE -->

<pattern id="p-ProgressNote_3A_CE_translation__viii_b_2_ii_b-error_mdht" see="#p-ProgressNote_3A_CE_translation__viii_b_2_ii_b-error_mdht" name="p-ProgressNote_3A_CE_translation__viii_b_2_ii_b-error_mdht">
		<!--
			UML path: /AllergyObservation/participant/participantRole/playingEntity/code
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/participant/participantRole/playingEntity/code
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole/cda:playingEntity/cda:code">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.translation->isEmpty()) and self.translation->exists(element | element.isNullFlavorUndefined())) implies (not self.translation->isEmpty()) ))
			Constraint name: AllergyObservationParticipantParticipantRolePlayingEntityCETranslation
		-->
	<assert test="@nullFlavor or not(cda:translation and cda:translation[not(@nullFlavor)]) or cda:translation">Error: ProgressNote - ?.viii.b.2.ii.b translation
		Conformance: MAY contain zero or more [0..*] translation (CONF:7431)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyStatusObservationEntryRelationship -->

<pattern id="p-ProgressNote_3A_AllergyStatusObservationEntryRelationship_allergyStatusObservation_4_8_11_i-error_mdht" see="#p-ProgressNote_3A_AllergyStatusObservationEntryRelationship_allergyStatusObservation_4_8_11_i-error_mdht" name="p-ProgressNote_3A_AllergyStatusObservationEntryRelationship_allergyStatusObservation_4_8_11_i-error_mdht">
		<!--
			UML path: /AllergyObservation/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship">
		<!--
			OCL: self.observation->select(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::AllergyStatusObservation))->size() <= 1
			Constraint name: AllergyObservationAllergyStatusObservationEntryRelationshipAllergyStatusObservation
		-->
	<assert test="count(cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']) &lt;= 1">Error: ProgressNote - 4.8.11.i allergyStatusObservation
		Conformance: MAY contain zero or one [0..1] observation (CONF:7440, CONF:7906, CONF:15954)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyStatusObservation: 2.16.840.1.113883.10.20.22.4.28 -->

<pattern id="p-ProgressNote_3A_AllergyStatusObservation_moodCode_4_11_3-error_mdht" see="#p-ProgressNote_3A_AllergyStatusObservation_moodCode_4_11_3-error_mdht" name="p-ProgressNote_3A_AllergyStatusObservation_moodCode_4_11_3-error_mdht">
		<!--
			UML path: /AllergyStatusObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/entryRelationship/allergyStatusObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: AllergyStatusObservationMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.11.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7319)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyStatusObservation: 2.16.840.1.113883.10.20.22.4.28 -->

<pattern id="p-ProgressNote_3A_AllergyStatusObservation_classCode_4_11_2-error_mdht" see="#p-ProgressNote_3A_AllergyStatusObservation_classCode_4_11_2-error_mdht" name="p-ProgressNote_3A_AllergyStatusObservation_classCode_4_11_2-error_mdht">
		<!--
			UML path: /AllergyStatusObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/entryRelationship/allergyStatusObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: AllergyStatusObservationClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: ProgressNote - 4.11.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7318)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyStatusObservation: 2.16.840.1.113883.10.20.22.4.28 -->

<pattern id="p-ProgressNote_3A_AllergyStatusObservation_statusCode_4_11_5-error_mdht" see="#p-ProgressNote_3A_AllergyStatusObservation_statusCode_4_11_5-error_mdht" name="p-ProgressNote_3A_AllergyStatusObservation_statusCode_4_11_5-error_mdht">
		<!--
			UML path: /AllergyStatusObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/entryRelationship/allergyStatusObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">
		<!--
			OCL: true
			Constraint name: AllergyStatusObservationStatusCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.11.5 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7321)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed'
			Constraint name: AllergyStatusObservationStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: ProgressNote - 4.11.5 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7321)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyStatusObservation: 2.16.840.1.113883.10.20.22.4.28 -->

<pattern id="p-ProgressNote_3A_AllergyStatusObservation_code_4_11_4-error_mdht" see="#p-ProgressNote_3A_AllergyStatusObservation_code_4_11_4-error_mdht" name="p-ProgressNote_3A_AllergyStatusObservation_code_4_11_4-error_mdht">
		<!--
			UML path: /AllergyStatusObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/entryRelationship/allergyStatusObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">
		<!--
			OCL: true
			Constraint name: AllergyStatusObservationCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.11.4 code
		Conformance: SHALL contain exactly one [1..1] code/@code=&quot;33999-4&quot; Status (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:7320)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = '33999-4' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: AllergyStatusObservationCode
		-->
	<assert test="cda:code and cda:code[@code = '33999-4' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 4.11.4 code
		Conformance: SHALL contain exactly one [1..1] code/@code=&quot;33999-4&quot; Status (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:7320)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyStatusObservation: 2.16.840.1.113883.10.20.22.4.28 -->

<pattern id="p-ProgressNote_3A_AllergyStatusObservation_templateId_4_11_1-error_mdht" see="#p-ProgressNote_3A_AllergyStatusObservation_templateId_4_11_1-error_mdht" name="p-ProgressNote_3A_AllergyStatusObservation_templateId_4_11_1-error_mdht">
		<!--
			UML path: /AllergyStatusObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/entryRelationship/allergyStatusObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.28')
			Constraint name: AllergyStatusObservationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28'">Error: ProgressNote - 4.11.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7317, CONF:10490 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.28&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AllergyStatusObservation: 2.16.840.1.113883.10.20.22.4.28 -->

<pattern id="p-ProgressNote_3A_AllergyStatusObservation_value_4_11_6-error_mdht" see="#p-ProgressNote_3A_AllergyStatusObservation_value_4_11_6-error_mdht" name="p-ProgressNote_3A_AllergyStatusObservation_value_4_11_6-error_mdht">
		<!--
			UML path: /AllergyStatusObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection/allergiesSection/entry/allergyProblemAct/entryRelationship/allergyObservation/entryRelationship/allergyStatusObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">
		<!--
			OCL: true
			Constraint name: AllergyStatusObservationValueP
		-->
	<assert test="true()">Error: ProgressNote - 4.11.6 value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;CE&quot;, which SHALL be selected from ValueSet HITSP Problem Status 2.16.840.1.113883.3.88.12.80.68 STATIC (CONF:7322)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = element.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.96' and (value.code = '55561003' or value.code = '73425007' or value.code = '413322009'))
			Constraint name: AllergyStatusObservationValue
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(. and @xsi:type='CE' and @codeSystem = '2.16.840.1.113883.6.96' and (@code = '55561003' or @code = '73425007' or @code = '413322009'))])">Error: ProgressNote - 4.11.6 value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;CE&quot;, which SHALL be selected from ValueSet HITSP Problem Status 2.16.840.1.113883.3.88.12.80.68 STATIC (CONF:7322)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_chiefComplaintSection_2_17_6_i_e_1-error_mdht" see="#p-ProgressNote_2_Component_chiefComplaintSection_2_17_6_i_e_1-error_mdht" name="p-ProgressNote_2_Component_chiefComplaintSection_2_17_6_i_e_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/chiefComplaintSection
			UML root path: /ProgressNote/component/structuredBody/chiefComplaintSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ChiefComplaintSection))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentChiefComplaintSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1']) &lt;= 1">Error: ProgressNote - 2.17.6.i.e.1 chiefComplaintSection
		Conformance: MAY contain zero or one [0..1] section (CONF:8772)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ChiefComplaintSection: 1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1 -->

<pattern id="p-ProgressNote_2_ChiefComplaintSection_code_3_17_2-error_mdht" see="#p-ProgressNote_2_ChiefComplaintSection_code_3_17_2-error_mdht" name="p-ProgressNote_2_ChiefComplaintSection_code_3_17_2-error_mdht">
		<!--
			UML path: /ChiefComplaintSection
			UML root path: /DischargeSummary/component/structuredBody/chiefComplaintSection/chiefComplaintSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '10154-3' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ChiefComplaintSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '10154-3' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.17.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15451)/@code=&quot;10154-3&quot; CHIEF COMPLAINT (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15452)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ChiefComplaintSectionCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.17.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15451)/@code=&quot;10154-3&quot; CHIEF COMPLAINT (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15452)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ChiefComplaintSection: 1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1 -->

<pattern id="p-ProgressNote_2_ChiefComplaintSection_title_3_17_4-error_mdht" see="#p-ProgressNote_2_ChiefComplaintSection_title_3_17_4-error_mdht" name="p-ProgressNote_2_ChiefComplaintSection_title_3_17_4-error_mdht">
		<!--
			UML path: /ChiefComplaintSection
			UML root path: /DischargeSummary/component/structuredBody/chiefComplaintSection/chiefComplaintSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ChiefComplaintSectionTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.17.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:7834)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ChiefComplaintSection: 1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1 -->

<pattern id="p-ProgressNote_2_ChiefComplaintSection_templateId_3_17_1-error_mdht" see="#p-ProgressNote_2_ChiefComplaintSection_templateId_3_17_1-error_mdht" name="p-ProgressNote_2_ChiefComplaintSection_templateId_3_17_1-error_mdht">
		<!--
			UML path: /ChiefComplaintSection
			UML root path: /DischargeSummary/component/structuredBody/chiefComplaintSection/chiefComplaintSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1')
			Constraint name: ChiefComplaintSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1'">Error: ProgressNote - 3.17.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7832, CONF:10453 ) such that it SHALL contain exactly one [1..1] @root=&quot;1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ChiefComplaintSection: 1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1 -->

<pattern id="p-ProgressNote_2_ChiefComplaintSection_text_3_17_3-error_mdht" see="#p-ProgressNote_2_ChiefComplaintSection_text_3_17_3-error_mdht" name="p-ProgressNote_2_ChiefComplaintSection_text_3_17_3-error_mdht">
		<!--
			UML path: /ChiefComplaintSection
			UML root path: /DischargeSummary/component/structuredBody/chiefComplaintSection/chiefComplaintSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ChiefComplaintSectionText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.17.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7835)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_interventionsSection_2_17_6_i_f_1-error_mdht" see="#p-ProgressNote_2_Component_interventionsSection_2_17_6_i_f_1-error_mdht" name="p-ProgressNote_2_Component_interventionsSection_2_17_6_i_f_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/interventionsSection
			UML root path: /ProgressNote/component/structuredBody/interventionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::InterventionsSection))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentInterventionsSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.3']) &lt;= 1">Error: ProgressNote - 2.17.6.i.f.1 interventionsSection
		Conformance: MAY contain zero or one [0..1] section (CONF:8778)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InterventionsSection: 2.16.840.1.113883.10.20.21.2.3 -->

<pattern id="p-ProgressNote_2_InterventionsSection_templateId_3_58_1-error_mdht" see="#p-ProgressNote_2_InterventionsSection_templateId_3_58_1-error_mdht" name="p-ProgressNote_2_InterventionsSection_templateId_3_58_1-error_mdht">
		<!--
			UML path: /InterventionsSection
			UML root path: /ProgressNote/component/structuredBody/interventionsSection/interventionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.3']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.21.2.3')
			Constraint name: InterventionsSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.3'">Error: ProgressNote - 3.58.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8680 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.21.2.3&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InterventionsSection: 2.16.840.1.113883.10.20.21.2.3 -->

<pattern id="p-ProgressNote_2_InterventionsSection_code_3_58_2-error_mdht" see="#p-ProgressNote_2_InterventionsSection_code_3_58_2-error_mdht" name="p-ProgressNote_2_InterventionsSection_code_3_58_2-error_mdht">
		<!--
			UML path: /InterventionsSection
			UML root path: /ProgressNote/component/structuredBody/interventionsSection/interventionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.3']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '62387-6' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: InterventionsSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '62387-6' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.58.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15377)/@code=&quot;62387-6&quot;  (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15378)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: InterventionsSectionCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.58.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15377)/@code=&quot;62387-6&quot;  (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15378)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InterventionsSection: 2.16.840.1.113883.10.20.21.2.3 -->

<pattern id="p-ProgressNote_2_InterventionsSection_text_3_59_4-error_mdht" see="#p-ProgressNote_2_InterventionsSection_text_3_59_4-error_mdht" name="p-ProgressNote_2_InterventionsSection_text_3_59_4-error_mdht">
		<!--
			UML path: /InterventionsSection
			UML root path: /ProgressNote/component/structuredBody/interventionsSection/interventionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.3']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: InterventionsSectionText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.59.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8683, R2.1=CONF:1198-8683)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InterventionsSection: 2.16.840.1.113883.10.20.21.2.3 -->

<pattern id="p-ProgressNote_2_InterventionsSection_title_3_59_3-error_mdht" see="#p-ProgressNote_2_InterventionsSection_title_3_59_3-error_mdht" name="p-ProgressNote_2_InterventionsSection_title_3_59_3-error_mdht">
		<!--
			UML path: /InterventionsSection
			UML root path: /ProgressNote/component/structuredBody/interventionsSection/interventionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.3']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: InterventionsSectionTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.59.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8682, R2.1=CONF:1198-8682)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_medicationsSectionEntriesOptional_2_17_6_i_g_1-error_mdht" see="#p-ProgressNote_2_Component_medicationsSectionEntriesOptional_2_17_6_i_g_1-error_mdht" name="p-ProgressNote_2_Component_medicationsSectionEntriesOptional_2_17_6_i_g_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/medicationsSectionEntriesOptional
			UML root path: /ProgressNote/component/structuredBody/medicationsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::MedicationsSectionEntriesOptional))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentMedicationsSectionEntriesOptional
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']) &lt;= 1">Error: ProgressNote - 2.17.6.i.g.1 medicationsSectionEntriesOptional
		Conformance: MAY contain zero or one [0..1] section (CONF:8771)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.1 -->

<pattern id="p-ProgressNote_2_MedicationsSectionEntriesOptional_templateId_3_67_1-error_mdht" see="#p-ProgressNote_2_MedicationsSectionEntriesOptional_templateId_3_67_1-error_mdht" name="p-ProgressNote_2_MedicationsSectionEntriesOptional_templateId_3_67_1-error_mdht">
		<!--
			UML path: /MedicationsSectionEntriesOptional
			UML root path: /ConsultationNote/component/structuredBody/medicationsSectionEntriesOptional/medicationsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.1')
			Constraint name: MedicationsSectionEntriesOptionalTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1'">Error: ProgressNote - 3.67.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7791 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.1 -->

<pattern id="p-ProgressNote_2_MedicationsSectionEntriesOptional_title_3_68_3-error_mdht" see="#p-ProgressNote_2_MedicationsSectionEntriesOptional_title_3_68_3-error_mdht" name="p-ProgressNote_2_MedicationsSectionEntriesOptional_title_3_68_3-error_mdht">
		<!--
			UML path: /MedicationsSectionEntriesOptional
			UML root path: /ConsultationNote/component/structuredBody/medicationsSectionEntriesOptional/medicationsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: MedicationsSectionEntriesOptionalTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.68.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:7793, R2.0=CONF:1098-7793)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.1 -->

<pattern id="p-ProgressNote_2_MedicationsSectionEntriesOptional_code_3_67_2-error_mdht" see="#p-ProgressNote_2_MedicationsSectionEntriesOptional_code_3_67_2-error_mdht" name="p-ProgressNote_2_MedicationsSectionEntriesOptional_code_3_67_2-error_mdht">
		<!--
			UML path: /MedicationsSectionEntriesOptional
			UML root path: /ConsultationNote/component/structuredBody/medicationsSectionEntriesOptional/medicationsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']">
		<!--
			OCL: true
			Constraint name: MedicationsSectionEntriesOptionalCodeP
		-->
	<assert test="true()">Error: ProgressNote - 3.67.2 code
		Conformance: SHALL contain exactly one [1..1] code/@code=&quot;10160-0&quot; History of medication use (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:7792)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '10160-0' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: MedicationsSectionEntriesOptionalCode
		-->
	<assert test="cda:code and cda:code[@code = '10160-0' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.67.2 code
		Conformance: SHALL contain exactly one [1..1] code/@code=&quot;10160-0&quot; History of medication use (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:7792)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.1 -->

<pattern id="p-ProgressNote_3A_MedicationsSectionEntriesOptional_entry_3_67_5-error_mdht" see="#p-ProgressNote_3A_MedicationsSectionEntriesOptional_entry_3_67_5-error_mdht" name="p-ProgressNote_3A_MedicationsSectionEntriesOptional_entry_3_67_5-error_mdht">
		<!--
			UML path: /MedicationsSectionEntriesOptional
			UML root path: /ConsultationNote/component/structuredBody/medicationsSectionEntriesOptional/medicationsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::MedicationsSectionEntriesOptional::MedicationActivityEntry))
			Constraint name: MedicationsSectionEntriesOptionalEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.67.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.1 -->

<pattern id="p-ProgressNote_2_MedicationsSectionEntriesOptional_text_3_68_4-error_mdht" see="#p-ProgressNote_2_MedicationsSectionEntriesOptional_text_3_68_4-error_mdht" name="p-ProgressNote_2_MedicationsSectionEntriesOptional_text_3_68_4-error_mdht">
		<!--
			UML path: /MedicationsSectionEntriesOptional
			UML root path: /ConsultationNote/component/structuredBody/medicationsSectionEntriesOptional/medicationsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: MedicationsSectionEntriesOptionalText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.68.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7794, R2.0=CONF:1098-7794)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivityEntry -->

<pattern id="p-ProgressNote_3A_MedicationActivityEntry_medicationActivity_3_67_5_i-error_mdht" see="#p-ProgressNote_3A_MedicationActivityEntry_medicationActivity_3_67_5_i-error_mdht" name="p-ProgressNote_3A_MedicationActivityEntry_medicationActivity_3_67_5_i-error_mdht">
		<!--
			UML path: /MedicationsSectionEntriesOptional/entry
			UML root path: /ConsultationNote/component/structuredBody/medicationsSectionEntriesOptional/medicationsSectionEntriesOptional/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']/cda:entry">
		<!--
			OCL: self.substanceAdministration->select(substanceAdministration : cda::SubstanceAdministration | not substanceAdministration.oclIsUndefined() and substanceAdministration.oclIsKindOf(consol::MedicationActivity))->size() >= 0
			Constraint name: MedicationsSectionEntriesOptionalMedicationActivityEntryMedicationActivity
		-->
	<assert test="count(cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']) &gt;= 0">Error: ProgressNote - 3.67.5.i medicationActivity
		Conformance: SHOULD contain zero or more [0..*] substanceAdministration (CONF:7795, CONF:7573)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_maxDoseQuantity_4_69_11-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_maxDoseQuantity_4_69_11-error_mdht" name="p-ProgressNote_3A_MedicationActivity_maxDoseQuantity_4_69_11-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: ((not self.maxDoseQuantity.oclIsUndefined()) and self.maxDoseQuantity.isNullFlavorUndefined()) implies (not self.maxDoseQuantity.oclIsUndefined())
			Constraint name: MedicationActivityMaxDoseQuantity
		-->
	<assert test="not(cda:maxDoseQuantity and not(cda:maxDoseQuantity/@nullFlavor)) or cda:maxDoseQuantity">Error: ProgressNote - 4.69.11 Dose Restriction
		Conformance: MAY contain zero or one [0..1] maxDoseQuantity (Dose Restriction) (CONF:7518, R2.0=CONF:1098-7518)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_MedicationActivityDrugVehicleTypeCode_4_68_27-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_MedicationActivityDrugVehicleTypeCode_4_68_27-error_mdht" name="p-ProgressNote_3A_MedicationActivity_MedicationActivityDrugVehicleTypeCode_4_68_27-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.participant->select(par : cda::Participant2 | par.participantRole.oclIsKindOf(consol::DrugVehicle))->forAll(p : cda::Participant2 | p.typeCode=vocab::ParticipationType::CSM)
			Constraint name: MedicationActivityDrugVehicleTypeCode
		-->
	<assert test="not(cda:participant[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24'][not(@typeCode = 'CSM')])">Error: ProgressNote - 4.68.27 MedicationActivityDrugVehicleTypeCode
		Conformance: participant with target entry Drug Vehicle SHALL contain exactly one [1..1] @typeCode=&quot;CSM&quot; (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90) (CONF:7524, R2.0=CONF:1098-7524)
		Analysis: participant with target entry Drug Vehicle SHALL contain exactly one [1..1] @typeCode=&quot;CSM&quot; (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90)
		Validation message: n/a	</assert>
		<!--
			OCL: self.entryRelationship->select(er : cda::EntryRelationship | er.act.oclIsTypeOf(consol::Instructions))->forAll(ent : cda::EntryRelationship | ent.inversionInd=true)
			Constraint name: MedicationActivityInstructionsInversionInd
		-->
	<assert test="not(cda:entryRelationship[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20'][not(@inversionInd = 'true')])">Error: ProgressNote - 4.68.27 MedicationActivityDrugVehicleTypeCode
		Conformance: participant with target entry Drug Vehicle SHALL contain exactly one [1..1] @typeCode=&quot;CSM&quot; (CodeSystem: HL7ParticipationType 2.16.840.1.113883.5.90) (CONF:7524, R2.0=CONF:1098-7524)
		Analysis: entryRelationship with target entry Instructions SHALL contain exactly one [1..1] @inversionInd=&quot;true&quot; True
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_templateId_4_68_1-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_templateId_4_68_1-error_mdht" name="p-ProgressNote_3A_MedicationActivity_templateId_4_68_1-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.16')
			Constraint name: MedicationActivityTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16'">Error: ProgressNote - 4.68.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7499, CONF:10504 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.16&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_consumable_4_68_17-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_consumable_4_68_17-error_mdht" name="p-ProgressNote_3A_MedicationActivity_consumable_4_68_17-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.consumable->one(consumable : cda::Consumable | not consumable.oclIsUndefined() and consumable.oclIsKindOf(cda::Consumable))
			Constraint name: MedicationActivityConsumable
		-->
	<assert test="count(cda:consumable)=1">Error: ProgressNote - 4.68.17 Medication Information
		Conformance: SHALL contain exactly one [1..1] consumable (Medication Information) (CONF:7520)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_drugVehicle_4_69_16-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_drugVehicle_4_69_16-error_mdht" name="p-ProgressNote_3A_MedicationActivity_drugVehicle_4_69_16-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.participant->select(participant : cda::Participant2 | not participant.participantRole.oclIsUndefined() and participant.participantRole.oclIsKindOf(consol::DrugVehicle))->size() >= 0
			Constraint name: MedicationActivityDrugVehicle
		-->
	<assert test="count(cda:participant[cda:participantRole and cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']) &gt;= 0">Error: ProgressNote - 4.69.16 drugVehicle
		Conformance: MAY contain  [0..*] participant such that it  (CONF:7523, CONF:16086, R2.0=CONF:1098-7523, R2.0=CONF:1098-16086)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_id_4_69_4-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_id_4_69_4-error_mdht" name="p-ProgressNote_3A_MedicationActivity_id_4_69_4-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: MedicationActivityId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.69.4 id
		Conformance: SHALL contain at least one [1..*] id (CONF:7500, R2.0=CONF:1098-7500)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_moodCode_4_69_3-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_moodCode_4_69_3-error_mdht" name="p-ProgressNote_3A_MedicationActivity_moodCode_4_69_3-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: true
			Constraint name: MedicationActivityMoodCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.69.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:7497, R2.0=CONF:1098-7497)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.moodCode.oclIsUndefined() and self.moodCode.oclIsKindOf(vocab::x_DocumentSubstanceMood) and 
let value : vocab::x_DocumentSubstanceMood = self.moodCode.oclAsType(vocab::x_DocumentSubstanceMood) in 
value = vocab::x_DocumentSubstanceMood::EVN or value = vocab::x_DocumentSubstanceMood::INT
			Constraint name: MedicationActivityMoodCode
		-->
	<assert test="@moodCode and @moodCode[. = 'EVN' or . = 'INT']">Error: ProgressNote - 4.69.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:7497, R2.0=CONF:1098-7497)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_MedicationActivityEffectiveTimeTSValue_4_68_26-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_MedicationActivityEffectiveTimeTSValue_4_68_26-error_mdht" name="p-ProgressNote_3A_MedicationActivity_MedicationActivityEffectiveTimeTSValue_4_68_26-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.effectiveTime->select(ef | ef.oclIsTypeOf(datatypes:: SXCM_TS))->forAll( eff | eff.oclAsType(datatypes:: SXCM_TS).value->size() = 1 or eff.oclAsType(datatypes:: SXCM_TS).isNullFlavorDefined())
			Constraint name: MedicationActivityEffectiveTimeTSValue
		-->
	<assert test="not(cda:effectiveTime[not(count(@value) = 1 or @nullFlavor)])">Error: ProgressNote - 4.68.26 MedicationActivityEffectiveTimeTSValue
		Conformance: If effectiveTime @xsi:type=&quot;TS&quot;, SHALL contain exactly one [1..1] @value (CONF:NEW, R2.0=CONF:1098-32775)
		Analysis: If effectiveTime @xsi:type=&quot;TS&quot;, SHALL contain exactly one [1..1] @value
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_precondition_4_68_18-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_precondition_4_68_18-error_mdht" name="p-ProgressNote_3A_MedicationActivity_precondition_4_68_18-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.precondition->select(precondition : cda::Precondition | not precondition.oclIsUndefined() and precondition.oclIsKindOf(cda::Precondition))->size() >= 0
			Constraint name: MedicationActivityPrecondition
		-->
	<assert test="count(cda:precondition) &gt;= 0">Error: ProgressNote - 4.68.18 precondition
		Conformance: MAY contain zero or more [0..*] precondition (CONF:7546)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_22-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_22-error_mdht" name="p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_22-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::MedicationActivity::IndicationEntryRelationship))
			Constraint name: MedicationActivityEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.68.22 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_statusCode_4_68_6-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_statusCode_4_68_6-error_mdht" name="p-ProgressNote_3A_MedicationActivity_statusCode_4_68_6-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: not self.statusCode.oclIsUndefined()
			Constraint name: MedicationActivityStatusCode
		-->
	<assert test="cda:statusCode">Error: ProgressNote - 4.68.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (CONF:7507)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_doseQuantity_4_68_9-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_doseQuantity_4_68_9-error_mdht" name="p-ProgressNote_3A_MedicationActivity_doseQuantity_4_68_9-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: ((not self.doseQuantity.oclIsUndefined()) and self.doseQuantity.isNullFlavorUndefined()) implies (not self.doseQuantity.oclIsUndefined())
			Constraint name: MedicationActivityDoseQuantity
		-->
	<assert test="not(cda:doseQuantity and not(cda:doseQuantity/@nullFlavor)) or cda:doseQuantity">Error: ProgressNote - 4.68.9 Dose
		Conformance: SHOULD contain zero or one [0..1] doseQuantity (Dose) (CONF:7516)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_21-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_21-error_mdht" name="p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_21-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::MedicationActivity::ReactionObservationEntryRelationship))
			Constraint name: MedicationActivityEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.68.21 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_text_4_68_13-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_text_4_68_13-error_mdht" name="p-ProgressNote_3A_MedicationActivity_text_4_68_13-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: ((not self.text.oclIsUndefined()) and self.text.isNullFlavorUndefined()) implies (not self.text.oclIsUndefined())
			Constraint name: MedicationActivityText
		-->
	<assert test="not(cda:text and not(cda:text/@nullFlavor)) or cda:text">Error: ProgressNote - 4.68.13 Free Text Sig
		Conformance: SHOULD contain zero or one [0..1] text (Free Text Sig) (CONF:7501)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_MedicationActivityDoseQuantityorrateQuantity_4_68_24-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_MedicationActivityDoseQuantityorrateQuantity_4_68_24-error_mdht" name="p-ProgressNote_3A_MedicationActivity_MedicationActivityDoseQuantityorrateQuantity_4_68_24-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.doseQuantity->size() = 1 or self.rateQuantity->size() = 1
			Constraint name: MedicationActivityDoseQuantityorrateQuantity
		-->
	<assert test="count(cda:doseQuantity) = 1 or count(cda:rateQuantity) = 1">Error: ProgressNote - 4.68.24 MedicationActivityDoseQuantityorrateQuantity
		Conformance: Medication Activity SHOULD include doseQuantity OR rateQuantity (CONF:7529)
		Analysis: Medication Activity SHOULD include doseQuantity OR rateQuantity
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_approachSiteCode_4_69_8-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_approachSiteCode_4_69_8-error_mdht" name="p-ProgressNote_3A_MedicationActivity_approachSiteCode_4_69_8-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: ((not self.approachSiteCode->isEmpty()) and self.approachSiteCode->exists(element | element.isNullFlavorUndefined())) implies (self.approachSiteCode->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = element.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and not value.code.oclIsUndefined()))
			Constraint name: MedicationActivityApproachSiteCode
		-->
	<assert test="not(cda:approachSiteCode and cda:approachSiteCode[not(@nullFlavor)]) or not(cda:approachSiteCode[not(. and @codeSystem = '2.16.840.1.113883.6.96' and @code)])">Error: ProgressNote - 4.69.8 Site
		Conformance: MAY contain zero or one [0..1] approachSiteCode (Site), which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:7515, R2.0=CONF:1098-7515)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.approachSiteCode->isEmpty()) and self.approachSiteCode->exists(element | element.isNullFlavorUndefined())) implies (self.approachSiteCode->size() <= 1)
			Constraint name: MedicationActivityApproachSiteCodeP
		-->
	<assert test="not(cda:approachSiteCode and cda:approachSiteCode[not(@nullFlavor)]) or count(cda:approachSiteCode) &lt;= 1">Error: ProgressNote - 4.69.8 Site
		Conformance: MAY contain zero or one [0..1] approachSiteCode (Site), which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:7515, R2.0=CONF:1098-7515)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_rateQuantity_4_69_10-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_rateQuantity_4_69_10-error_mdht" name="p-ProgressNote_3A_MedicationActivity_rateQuantity_4_69_10-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: ((not self.rateQuantity.oclIsUndefined()) and self.rateQuantity.isNullFlavorUndefined()) implies (not self.rateQuantity.oclIsUndefined())
			Constraint name: MedicationActivityRateQuantity
		-->
	<assert test="not(cda:rateQuantity and not(cda:rateQuantity/@nullFlavor)) or cda:rateQuantity">Error: ProgressNote - 4.69.10 rateQuantity
		Conformance: MAY contain zero or one [0..1] rateQuantity (CONF:7517, R2.0=CONF:1098-7517)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_performer_4_69_15-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_performer_4_69_15-error_mdht" name="p-ProgressNote_3A_MedicationActivity_performer_4_69_15-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.performer->select(performer : cda::Performer2 | not performer.oclIsUndefined() and performer.oclIsKindOf(cda::Performer2))->size() <= 1
			Constraint name: MedicationActivityPerformer
		-->
	<assert test="count(cda:performer) &lt;= 1">Error: ProgressNote - 4.69.15 performer
		Conformance: MAY contain  [0..1] performer such that it  (CONF:7522, R2.0=CONF:1098-7522)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_classCode_4_69_2-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_classCode_4_69_2-error_mdht" name="p-ProgressNote_3A_MedicationActivity_classCode_4_69_2-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.classCode=vocab::ActClass::SBADM
			Constraint name: MedicationActivityClassCode
		-->
	<assert test="@classCode = 'SBADM'">Error: ProgressNote - 4.69.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;SBADM&quot;  (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7496, R2.0=CONF:1098-7496)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_23-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_23-error_mdht" name="p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_23-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::MedicationActivity::MedicationDispenseEntryRelationship))
			Constraint name: MedicationActivityEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.68.23 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_MedicationActivityTextReference_4_68_25-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_MedicationActivityTextReference_4_68_25-error_mdht" name="p-ProgressNote_3A_MedicationActivity_MedicationActivityTextReference_4_68_25-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: not self.text.oclIsUndefined() implies self.text->forAll(reference->size() = 1)
			Constraint name: MedicationActivityTextReference
		-->
	<assert test="not(cda:text) or not(cda:text[not(count(cda:reference) = 1)])">Error: ProgressNote - 4.68.25 MedicationActivityTextReference
		Conformance: text, if present, SHOULD contain zero or one [0..1] reference (CONF:15977)
		Analysis: text, if present, SHOULD contain zero or one [0..1] reference
		Validation message: n/a	</assert>
		<!--
			OCL: self.text->forAll(reference->size() = 1) implies self.text->forAll(reference->one(value->size() = 1))
			Constraint name: MedicationActivityReferenceValue
		-->
	<assert test="cda:text[not(count(cda:reference) = 1)] or not(cda:text[not(count(cda:reference[count(@value) = 1])=1)])">Error: ProgressNote - 4.68.25 MedicationActivityTextReference
		Conformance: text, if present, SHOULD contain zero or one [0..1] reference (CONF:15977)
		Analysis: reference, if present, SHOULD contain zero or one [0..1] @value
		Validation message: n/a	</assert>
		<!--
			OCL: not self.text.reference.value.oclIsUndefined() implies not self.getSection().text.getText(self.text.reference.value.substring(2, self.text.reference.value.size())).oclIsUndefined()
			Constraint name: MedicationActivityTextReferenceValue
		-->
	<assert test="not(cda:text/cda:reference/@value) or string(ancestor::cda:section[1]/cda:text[@id=substring(cda:text/cda:reference/@value,2,string-length(cda:text/cda:reference/@value)-2)]// text())">Error: ProgressNote - 4.68.25 MedicationActivityTextReference
		Conformance: text, if present, SHOULD contain zero or one [0..1] reference (CONF:15977)
		Analysis: reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_20-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_20-error_mdht" name="p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_20-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::MedicationActivity::MedicationSupplyOrderEntryRelationship))
			Constraint name: MedicationActivityEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.68.20 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_routeCode_4_68_7-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_routeCode_4_68_7-error_mdht" name="p-ProgressNote_3A_MedicationActivity_routeCode_4_68_7-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: ((not self.routeCode.oclIsUndefined()) and self.routeCode.isNullFlavorUndefined()) implies (not self.routeCode.oclIsUndefined())
			Constraint name: MedicationActivityRouteCodeP
		-->
	<assert test="not(cda:routeCode and not(cda:routeCode/@nullFlavor)) or cda:routeCode">Error: ProgressNote - 4.68.7 Route
		Conformance: MAY contain zero or one [0..1] routeCode (Route), which SHALL be selected from ValueSet Medication Route FDA Value Set 2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:7514)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.routeCode.oclIsUndefined()) and self.routeCode.isNullFlavorUndefined()) implies (not self.routeCode.oclIsUndefined() and self.routeCode.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.routeCode.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.3.26.1.1' and (value.code = 'C38192' or value.code = 'C38193' or value.code = 'C38194' or value.code = 'C38675' or value.code = 'C38197' or value.code = 'C38633' or value.code = 'C38205' or value.code = 'C38206' or value.code = 'C38208' or value.code = 'C38209' or value.code = 'C38210' or value.code = 'C38211' or value.code = 'C38212' or value.code = 'C38200' or value.code = 'C38215' or value.code = 'C38219' or value.code = 'C38220' or value.code = 'C38221' or value.code = 'C38222' or value.code = 'C38223' or value.code = 'C38224' or value.code = 'C38225' or value.code = 'C38226' or value.code = 'C38227' or value.code = 'C38228' or value.code = 'C38229' or value.code = 'C38230' or value.code = 'C38231' or value.code = 'C38232' or value.code = 'C38233' or value.code = 'C38234' or value.code = 'C38217' or value.code = 'C38218' or value.code = 'C38235' or value.code = 'C38238' or value.code = 'C38239' or value.code = 'C38240' or value.code = 'C38241' or value.code = 'C38242' or value.code = 'C38243' or value.code = 'C38245' or value.code = 'C38246' or value.code = 'C38247' or value.code = 'C38249' or value.code = 'C38250' or value.code = 'C38251' or value.code = 'C38252' or value.code = 'C38253' or value.code = 'C38254' or value.code = 'C28161' or value.code = 'C38255' or value.code = 'C38256' or value.code = 'C38257' or value.code = 'C38258' or value.code = 'C38259' or value.code = 'C38260' or value.code = 'C38261' or value.code = 'C38262' or value.code = 'C38263' or value.code = 'C38264' or value.code = 'C38265' or value.code = 'C38266' or value.code = 'C38267' or value.code = 'C38207' or value.code = 'C38268' or value.code = 'C38269' or value.code = 'C38270' or value.code = 'C38272' or value.code = 'C38273' or value.code = 'C38276' or value.code = 'C38277' or value.code = 'C38278' or value.code = 'C38280' or value.code = 'C38203' or value.code = 'C38281' or value.code = 'C38282' or value.code = 'C38284' or value.code = 'C38285' or value.code = 'C48623' or value.code = 'C38286' or value.code = 'C38287' or value.code = 'C38288' or value.code = 'C38289' or value.code = 'C38291' or value.code = 'C38676' or value.code = 'C38292' or value.code = 'C38677' or value.code = 'C38293' or value.code = 'C38294' or value.code = 'C38295' or value.code = 'C38216' or value.code = 'C38296' or value.code = 'C38198' or value.code = 'C38297' or value.code = 'C38298' or value.code = 'C38299' or value.code = 'C38300' or value.code = 'C38301' or value.code = 'C38304' or value.code = 'C38305' or value.code = 'C38283' or value.code = 'C38307' or value.code = 'C38308' or value.code = 'C38309' or value.code = 'C38312' or value.code = 'C38271'))
			Constraint name: MedicationActivityRouteCode
		-->
	<assert test="not(cda:routeCode and not(cda:routeCode/@nullFlavor)) or cda:routeCode and cda:routeCode[@codeSystem = '2.16.840.1.113883.3.26.1.1' and (@code = 'C38192' or @code = 'C38193' or @code = 'C38194' or @code = 'C38675' or @code = 'C38197' or @code = 'C38633' or @code = 'C38205' or @code = 'C38206' or @code = 'C38208' or @code = 'C38209' or @code = 'C38210' or @code = 'C38211' or @code = 'C38212' or @code = 'C38200' or @code = 'C38215' or @code = 'C38219' or @code = 'C38220' or @code = 'C38221' or @code = 'C38222' or @code = 'C38223' or @code = 'C38224' or @code = 'C38225' or @code = 'C38226' or @code = 'C38227' or @code = 'C38228' or @code = 'C38229' or @code = 'C38230' or @code = 'C38231' or @code = 'C38232' or @code = 'C38233' or @code = 'C38234' or @code = 'C38217' or @code = 'C38218' or @code = 'C38235' or @code = 'C38238' or @code = 'C38239' or @code = 'C38240' or @code = 'C38241' or @code = 'C38242' or @code = 'C38243' or @code = 'C38245' or @code = 'C38246' or @code = 'C38247' or @code = 'C38249' or @code = 'C38250' or @code = 'C38251' or @code = 'C38252' or @code = 'C38253' or @code = 'C38254' or @code = 'C28161' or @code = 'C38255' or @code = 'C38256' or @code = 'C38257' or @code = 'C38258' or @code = 'C38259' or @code = 'C38260' or @code = 'C38261' or @code = 'C38262' or @code = 'C38263' or @code = 'C38264' or @code = 'C38265' or @code = 'C38266' or @code = 'C38267' or @code = 'C38207' or @code = 'C38268' or @code = 'C38269' or @code = 'C38270' or @code = 'C38272' or @code = 'C38273' or @code = 'C38276' or @code = 'C38277' or @code = 'C38278' or @code = 'C38280' or @code = 'C38203' or @code = 'C38281' or @code = 'C38282' or @code = 'C38284' or @code = 'C38285' or @code = 'C48623' or @code = 'C38286' or @code = 'C38287' or @code = 'C38288' or @code = 'C38289' or @code = 'C38291' or @code = 'C38676' or @code = 'C38292' or @code = 'C38677' or @code = 'C38293' or @code = 'C38294' or @code = 'C38295' or @code = 'C38216' or @code = 'C38296' or @code = 'C38198' or @code = 'C38297' or @code = 'C38298' or @code = 'C38299' or @code = 'C38300' or @code = 'C38301' or @code = 'C38304' or @code = 'C38305' or @code = 'C38283' or @code = 'C38307' or @code = 'C38308' or @code = 'C38309' or @code = 'C38312' or @code = 'C38271')]">Error: ProgressNote - 4.68.7 Route
		Conformance: MAY contain zero or one [0..1] routeCode (Route), which SHALL be selected from ValueSet Medication Route FDA Value Set 2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:7514)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_19-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_19-error_mdht" name="p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_19-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::MedicationActivity::InstructionsEntryRelationship))
			Constraint name: MedicationActivityEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.68.19 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_administrationUnitCode_4_68_12-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_administrationUnitCode_4_68_12-error_mdht" name="p-ProgressNote_3A_MedicationActivity_administrationUnitCode_4_68_12-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: ((not self.administrationUnitCode.oclIsUndefined()) and self.administrationUnitCode.isNullFlavorUndefined()) implies (not self.administrationUnitCode.oclIsUndefined())
			Constraint name: MedicationActivityAdministrationUnitCodeP
		-->
	<assert test="not(cda:administrationUnitCode and not(cda:administrationUnitCode/@nullFlavor)) or cda:administrationUnitCode">Error: ProgressNote - 4.68.12 Product Form
		Conformance: MAY contain zero or one [0..1] administrationUnitCode (Product Form), which SHALL be selected from ValueSet Medication Product Form Value Set 2.16.840.1.113883.3.88.12.3221.8.11 DYNAMIC (CONF:7519)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.administrationUnitCode.oclIsUndefined()) and self.administrationUnitCode.isNullFlavorUndefined()) implies (not self.administrationUnitCode.oclIsUndefined() and self.administrationUnitCode.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.administrationUnitCode.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.3.26.1.1' and (value.code = 'C42887' or value.code = 'C42888' or value.code = 'C42960' or value.code = 'C42971' or value.code = 'C42889' or value.code = 'C42892' or value.code = 'C42890' or value.code = 'C43451' or value.code = 'C42891' or value.code = 'C25158' or value.code = 'C42895' or value.code = 'C42896' or value.code = 'C42917' or value.code = 'C42902' or value.code = 'C42904' or value.code = 'C42916' or value.code = 'C42928' or value.code = 'C42936' or value.code = 'C42954' or value.code = 'C45414' or value.code = 'C42678' or value.code = 'C60884' or value.code = 'C60891' or value.code = 'C42900' or value.code = 'C42919' or value.code = 'C28944' or value.code = 'C60897' or value.code = 'C42901' or value.code = 'C45415' or value.code = 'C47890' or value.code = 'C43525' or value.code = 'C42679' or value.code = 'C42763' or value.code = 'C17423' or value.code = 'C42912' or value.code = 'C42913' or value.code = 'C42915' or value.code = 'C42929' or value.code = 'C60926' or value.code = 'C42932' or value.code = 'C42920' or value.code = 'C42984' or value.code = 'C60927' or value.code = 'C60928' or value.code = 'C60929' or value.code = 'C42933' or value.code = 'C42934' or value.code = 'C42906' or value.code = 'C60930' or value.code = 'C48193' or value.code = 'C42937' or value.code = 'C45416' or value.code = 'C42938' or value.code = 'C42903' or value.code = 'C42909' or value.code = 'C42939' or value.code = 'C42940' or value.code = 'C42921' or value.code = 'C42941' or value.code = 'C42894' or value.code = 'C42978' or value.code = 'C42942' or value.code = 'C42944' or value.code = 'C60931' or value.code = 'C42946' or value.code = 'C42914' or value.code = 'C42950' or value.code = 'C42974' or value.code = 'C42976' or value.code = 'C42977' or value.code = 'C42959' or value.code = 'C42957' or value.code = 'C42958' or value.code = 'C42956' or value.code = 'C42945' or value.code = 'C42899' or value.code = 'C42995' or value.code = 'C42926' or value.code = 'C42951' or value.code = 'C42988' or value.code = 'C60933' or value.code = 'C42922' or value.code = 'C47915' or value.code = 'C42947' or value.code = 'C42948' or value.code = 'C47916' or value.code = 'C45413' or value.code = 'C42949' or value.code = 'C42952' or value.code = 'C42953' or value.code = 'C60934' or value.code = 'C29167' or value.code = 'C60957' or value.code = 'C60958' or value.code = 'C42955' or value.code = 'C29269' or value.code = 'C42965' or value.code = 'C42966' or value.code = 'C60984' or value.code = 'C47887' or value.code = 'C42967' or value.code = 'C42907' or value.code = 'C60985' or value.code = 'C42968' or value.code = 'C42923' or value.code = 'C42911' or value.code = 'C42969' or value.code = 'C42943' or value.code = 'C42918' or value.code = 'C25394' or value.code = 'C42970' or value.code = 'C47913' or value.code = 'C42972' or value.code = 'C42908' or value.code = 'C42973' or value.code = 'C42975' or value.code = 'C42961' or value.code = 'C60988' or value.code = 'C42979' or value.code = 'C42980' or value.code = 'C42981' or value.code = 'C42982' or value.code = 'C42983' or value.code = 'C42986' or value.code = 'C42898' or value.code = 'C42987' or value.code = 'C60994' or value.code = 'C42935' or value.code = 'C60992' or value.code = 'C47912' or value.code = 'C42989' or value.code = 'C42962' or value.code = 'C42990' or value.code = 'C42991' or value.code = 'C47914' or value.code = 'C42993' or value.code = 'C42924' or value.code = 'C42994' or value.code = 'C42925' or value.code = 'C60995' or value.code = 'C47889' or value.code = 'C47898' or value.code = 'C42996' or value.code = 'C42998' or value.code = 'C42893' or value.code = 'C42897' or value.code = 'C60997' or value.code = 'C42905' or value.code = 'C42997' or value.code = 'C42910' or value.code = 'C42927' or value.code = 'C42931' or value.code = 'C42930' or value.code = 'C61004' or value.code = 'C61005' or value.code = 'C42964' or value.code = 'C42963' or value.code = 'C42999' or value.code = 'C61006' or value.code = 'C42985' or value.code = 'C42992' or value.code = 'C47892' or value.code = 'C47897' or value.code = 'C43000' or value.code = 'C43001' or value.code = 'C43002' or value.code = 'C43003'))
			Constraint name: MedicationActivityAdministrationUnitCode
		-->
	<assert test="not(cda:administrationUnitCode and not(cda:administrationUnitCode/@nullFlavor)) or cda:administrationUnitCode and cda:administrationUnitCode[@codeSystem = '2.16.840.1.113883.3.26.1.1' and (@code = 'C42887' or @code = 'C42888' or @code = 'C42960' or @code = 'C42971' or @code = 'C42889' or @code = 'C42892' or @code = 'C42890' or @code = 'C43451' or @code = 'C42891' or @code = 'C25158' or @code = 'C42895' or @code = 'C42896' or @code = 'C42917' or @code = 'C42902' or @code = 'C42904' or @code = 'C42916' or @code = 'C42928' or @code = 'C42936' or @code = 'C42954' or @code = 'C45414' or @code = 'C42678' or @code = 'C60884' or @code = 'C60891' or @code = 'C42900' or @code = 'C42919' or @code = 'C28944' or @code = 'C60897' or @code = 'C42901' or @code = 'C45415' or @code = 'C47890' or @code = 'C43525' or @code = 'C42679' or @code = 'C42763' or @code = 'C17423' or @code = 'C42912' or @code = 'C42913' or @code = 'C42915' or @code = 'C42929' or @code = 'C60926' or @code = 'C42932' or @code = 'C42920' or @code = 'C42984' or @code = 'C60927' or @code = 'C60928' or @code = 'C60929' or @code = 'C42933' or @code = 'C42934' or @code = 'C42906' or @code = 'C60930' or @code = 'C48193' or @code = 'C42937' or @code = 'C45416' or @code = 'C42938' or @code = 'C42903' or @code = 'C42909' or @code = 'C42939' or @code = 'C42940' or @code = 'C42921' or @code = 'C42941' or @code = 'C42894' or @code = 'C42978' or @code = 'C42942' or @code = 'C42944' or @code = 'C60931' or @code = 'C42946' or @code = 'C42914' or @code = 'C42950' or @code = 'C42974' or @code = 'C42976' or @code = 'C42977' or @code = 'C42959' or @code = 'C42957' or @code = 'C42958' or @code = 'C42956' or @code = 'C42945' or @code = 'C42899' or @code = 'C42995' or @code = 'C42926' or @code = 'C42951' or @code = 'C42988' or @code = 'C60933' or @code = 'C42922' or @code = 'C47915' or @code = 'C42947' or @code = 'C42948' or @code = 'C47916' or @code = 'C45413' or @code = 'C42949' or @code = 'C42952' or @code = 'C42953' or @code = 'C60934' or @code = 'C29167' or @code = 'C60957' or @code = 'C60958' or @code = 'C42955' or @code = 'C29269' or @code = 'C42965' or @code = 'C42966' or @code = 'C60984' or @code = 'C47887' or @code = 'C42967' or @code = 'C42907' or @code = 'C60985' or @code = 'C42968' or @code = 'C42923' or @code = 'C42911' or @code = 'C42969' or @code = 'C42943' or @code = 'C42918' or @code = 'C25394' or @code = 'C42970' or @code = 'C47913' or @code = 'C42972' or @code = 'C42908' or @code = 'C42973' or @code = 'C42975' or @code = 'C42961' or @code = 'C60988' or @code = 'C42979' or @code = 'C42980' or @code = 'C42981' or @code = 'C42982' or @code = 'C42983' or @code = 'C42986' or @code = 'C42898' or @code = 'C42987' or @code = 'C60994' or @code = 'C42935' or @code = 'C60992' or @code = 'C47912' or @code = 'C42989' or @code = 'C42962' or @code = 'C42990' or @code = 'C42991' or @code = 'C47914' or @code = 'C42993' or @code = 'C42924' or @code = 'C42994' or @code = 'C42925' or @code = 'C60995' or @code = 'C47889' or @code = 'C47898' or @code = 'C42996' or @code = 'C42998' or @code = 'C42893' or @code = 'C42897' or @code = 'C60997' or @code = 'C42905' or @code = 'C42997' or @code = 'C42910' or @code = 'C42927' or @code = 'C42931' or @code = 'C42930' or @code = 'C61004' or @code = 'C61005' or @code = 'C42964' or @code = 'C42963' or @code = 'C42999' or @code = 'C61006' or @code = 'C42985' or @code = 'C42992' or @code = 'C47892' or @code = 'C47897' or @code = 'C43000' or @code = 'C43001' or @code = 'C43002' or @code = 'C43003')]">Error: ProgressNote - 4.68.12 Product Form
		Conformance: MAY contain zero or one [0..1] administrationUnitCode (Product Form), which SHALL be selected from ValueSet Medication Product Form Value Set 2.16.840.1.113883.3.88.12.3221.8.11 DYNAMIC (CONF:7519)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_code_4_68_5-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_code_4_68_5-error_mdht" name="p-ProgressNote_3A_MedicationActivity_code_4_68_5-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: MedicationActivityCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: ProgressNote - 4.68.5 Delivery Method
		Conformance: MAY contain zero or one [0..1] code (Delivery Method) (CONF:7506)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationActivity: 2.16.840.1.113883.10.20.22.4.16 -->

<pattern id="p-ProgressNote_3A_MedicationActivity_repeatNumber_4_68_14-error_mdht" see="#p-ProgressNote_3A_MedicationActivity_repeatNumber_4_68_14-error_mdht" name="p-ProgressNote_3A_MedicationActivity_repeatNumber_4_68_14-error_mdht">
		<!--
			UML path: /MedicationActivity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">
		<!--
			OCL: ((not self.repeatNumber.oclIsUndefined()) and self.repeatNumber.isNullFlavorUndefined()) implies (not self.repeatNumber.oclIsUndefined())
			Constraint name: MedicationActivityRepeatNumber
		-->
	<assert test="not(cda:repeatNumber and not(cda:repeatNumber/@nullFlavor)) or cda:repeatNumber">Error: ProgressNote - 4.68.14 repeatNumber
		Conformance: MAY contain zero or one [0..1] repeatNumber (CONF:7555)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- DrugVehicle: 2.16.840.1.113883.10.20.22.4.24 -->

<pattern id="p-ProgressNote_3A_DrugVehicle_playingEntity_4_69_16_iv-error_mdht" see="#p-ProgressNote_3A_DrugVehicle_playingEntity_4_69_16_iv-error_mdht" name="p-ProgressNote_3A_DrugVehicle_playingEntity_4_69_16_iv-error_mdht">
		<!--
			UML path: /DrugVehicle
			UML root path: /ReferralNote/component/structuredBody/medicationsSection2/medicationsSection2/entry/medicationActivity2/drugVehicle
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">
		<!--
			OCL: self.playingEntity->one(playingEntity : cda::PlayingEntity | not playingEntity.oclIsUndefined() and playingEntity.oclIsKindOf(cda::PlayingEntity))
			Constraint name: DrugVehiclePlayingEntity
		-->
	<assert test="count(cda:playingEntity)=1">Error: ProgressNote - 4.69.16.iv playingEntity
		Conformance: SHALL contain  [1..1] playingEntity such that it  (CONF:7492)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- DrugVehicle: 2.16.840.1.113883.10.20.22.4.24 -->

<pattern id="p-ProgressNote_3A_DrugVehicle_DrugVehiclePlayingEntityCode_4_69_16_v-error_mdht" see="#p-ProgressNote_3A_DrugVehicle_DrugVehiclePlayingEntityCode_4_69_16_v-error_mdht" name="p-ProgressNote_3A_DrugVehicle_DrugVehiclePlayingEntityCode_4_69_16_v-error_mdht">
		<!--
			UML path: /DrugVehicle
			UML root path: /ReferralNote/component/structuredBody/medicationsSection2/medicationsSection2/entry/medicationActivity2/drugVehicle
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">
		<!--
			OCL: not self.playingEntity.oclIsUndefined() implies (self.playingEntity.code.isNullFlavorDefined() or self.playingEntity.code->size() =1)
			Constraint name: DrugVehiclePlayingEntityCode
		-->
	<assert test="not(cda:playingEntity) or cda:playingEntity/cda:code/@nullFlavor or count(cda:playingEntity/cda:code) = 1">Error: ProgressNote - 4.69.16.v DrugVehiclePlayingEntityCode
		Conformance: This playingEntity SHALL contain exactly one [1..1] code (CONF:7493, CONF:10086)
		Analysis: This playingEntity SHALL contain exactly one [1..1] code
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- DrugVehicle: 2.16.840.1.113883.10.20.22.4.24 -->

<pattern id="p-ProgressNote_3A_DrugVehicle_templateId_4_69_16_i-error_mdht" see="#p-ProgressNote_3A_DrugVehicle_templateId_4_69_16_i-error_mdht" name="p-ProgressNote_3A_DrugVehicle_templateId_4_69_16_i-error_mdht">
		<!--
			UML path: /DrugVehicle
			UML root path: /ReferralNote/component/structuredBody/medicationsSection2/medicationsSection2/entry/medicationActivity2/drugVehicle
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.24')
			Constraint name: DrugVehicleTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24'">Error: ProgressNote - 4.69.16.i templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7495 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.24&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- DrugVehicle: 2.16.840.1.113883.10.20.22.4.24 -->

<pattern id="p-ProgressNote_3A_DrugVehicle_code_4_69_16_iii-error_mdht" see="#p-ProgressNote_3A_DrugVehicle_code_4_69_16_iii-error_mdht" name="p-ProgressNote_3A_DrugVehicle_code_4_69_16_iii-error_mdht">
		<!--
			UML path: /DrugVehicle
			UML root path: /ReferralNote/component/structuredBody/medicationsSection2/medicationsSection2/entry/medicationActivity2/drugVehicle
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">
		<!--
			OCL: true
			Constraint name: DrugVehicleCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.69.16.iii code
		Conformance: SHALL contain exactly one [1..1] code/@code=&quot;412307009&quot;  (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:7491)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '412307009' and value.codeSystem = '2.16.840.1.113883.6.96'
			Constraint name: DrugVehicleCode
		-->
	<assert test="cda:code and cda:code[@code = '412307009' and @codeSystem = '2.16.840.1.113883.6.96']">Error: ProgressNote - 4.69.16.iii code
		Conformance: SHALL contain exactly one [1..1] code/@code=&quot;412307009&quot;  (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:7491)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- DrugVehicle: 2.16.840.1.113883.10.20.22.4.24 -->

<pattern id="p-ProgressNote_3A_DrugVehicle_classCode_4_69_16_ii-error_mdht" see="#p-ProgressNote_3A_DrugVehicle_classCode_4_69_16_ii-error_mdht" name="p-ProgressNote_3A_DrugVehicle_classCode_4_69_16_ii-error_mdht">
		<!--
			UML path: /DrugVehicle
			UML root path: /ReferralNote/component/structuredBody/medicationsSection2/medicationsSection2/entry/medicationActivity2/drugVehicle
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">
		<!--
			OCL: isDefined('classCode') and self.classCode=vocab::RoleClassRoot::MANU
			Constraint name: DrugVehicleClassCode
		-->
	<assert test="attribute::node()[name() = 'classCode'] and @classCode = 'MANU'">Error: ProgressNote - 4.69.16.ii classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;MANU&quot;  (CONF:7490)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- DrugVehicle: 2.16.840.1.113883.10.20.22.4.24 -->

<pattern id="p-ProgressNote_3A_DrugVehicle_DrugVehiclePlayingEntityName_4_69_16_vi-error_mdht" see="#p-ProgressNote_3A_DrugVehicle_DrugVehiclePlayingEntityName_4_69_16_vi-error_mdht" name="p-ProgressNote_3A_DrugVehicle_DrugVehiclePlayingEntityName_4_69_16_vi-error_mdht">
		<!--
			UML path: /DrugVehicle
			UML root path: /ReferralNote/component/structuredBody/medicationsSection2/medicationsSection2/entry/medicationActivity2/drugVehicle
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">
		<!--
			OCL: not self.playingEntity.oclIsUndefined() implies self.playingEntity.name->size() =1
			Constraint name: DrugVehiclePlayingEntityName
		-->
	<assert test="not(cda:playingEntity) or count(cda:playingEntity/cda:name) = 1">Error: ProgressNote - 4.69.16.vi DrugVehiclePlayingEntityName
		Conformance: This playingEntity MAY contain zero or one [0..1] name (CONF:7494). 
			This playingEntity/name MAY be used for the vehicle name in text, such as Normal Saline (CONF:10087) (CONF:7494, CONF:10087)
		Analysis: This playingEntity MAY contain zero or one [0..1] name (CONF:7494). 
			This playingEntity/name MAY be used for the vehicle name in text, such as Normal Saline (CONF:10087)
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Consumable -->

<pattern id="p-ProgressNote_3A_Consumable_medicationInformation_4_68_17_i-error_mdht" see="#p-ProgressNote_3A_Consumable_medicationInformation_4_68_17_i-error_mdht" name="p-ProgressNote_3A_Consumable_medicationInformation_4_68_17_i-error_mdht">
		<!--
			UML path: /MedicationActivity/consumable
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/consumable
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable">
		<!--
			OCL: self.manufacturedProduct->one(manufacturedProduct : cda::ManufacturedProduct | not manufacturedProduct.oclIsUndefined() and manufacturedProduct.oclIsKindOf(consol::MedicationInformation))
			Constraint name: MedicationActivityConsumableMedicationInformation
		-->
	<assert test="count(cda:manufacturedProduct[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.23'])=1">Error: ProgressNote - 4.68.17.i medicationInformation
		Conformance: SHALL contain exactly one [1..1] manufacturedProduct (CONF:16085)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationInformation: 2.16.840.1.113883.10.20.22.4.23 -->

<pattern id="p-ProgressNote_3A_MedicationInformation_manufacturedMaterial_4_68_17_i_e-error_mdht" see="#p-ProgressNote_3A_MedicationInformation_manufacturedMaterial_4_68_17_i_e-error_mdht" name="p-ProgressNote_3A_MedicationInformation_manufacturedMaterial_4_68_17_i_e-error_mdht">
		<!--
			UML path: /MedicationInformation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/consumable/medicationInformation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct">
		<!--
			OCL: self.manufacturedMaterial->one(manufacturedMaterial : cda::Material | not manufacturedMaterial.oclIsUndefined() and manufacturedMaterial.oclIsKindOf(cda::Material))
			Constraint name: MedicationInformationManufacturedMaterial
		-->
	<assert test="count(cda:manufacturedMaterial)=1">Error: ProgressNote - 4.68.17.i.e manufacturedMaterial
		Conformance: SHALL contain exactly one [1..1] manufacturedMaterial (CONF:7411)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationInformation: 2.16.840.1.113883.10.20.22.4.23 -->

<pattern id="p-ProgressNote_3A_MedicationInformation_templateId_4_68_17_i_a-error_mdht" see="#p-ProgressNote_3A_MedicationInformation_templateId_4_68_17_i_a-error_mdht" name="p-ProgressNote_3A_MedicationInformation_templateId_4_68_17_i_a-error_mdht">
		<!--
			UML path: /MedicationInformation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/consumable/medicationInformation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.23')
			Constraint name: MedicationInformationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.23'">Error: ProgressNote - 4.68.17.i.a templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7409, CONF:10506 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.23&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationInformation: 2.16.840.1.113883.10.20.22.4.23 -->

<pattern id="p-ProgressNote_3A_MedicationInformation_id_4_69_12_i_c-error_mdht" see="#p-ProgressNote_3A_MedicationInformation_id_4_69_12_i_c-error_mdht" name="p-ProgressNote_3A_MedicationInformation_id_4_69_12_i_c-error_mdht">
		<!--
			UML path: /MedicationInformation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/consumable/medicationInformation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct">
		<!--
			OCL: ((not self.id->isEmpty()) and self.id->exists(element | element.isNullFlavorUndefined())) implies (not self.id->isEmpty())
			Constraint name: MedicationInformationId
		-->
	<assert test="not(cda:id and cda:id[not(@nullFlavor)]) or cda:id">Error: ProgressNote - 4.69.12.i.c id
		Conformance: MAY contain zero or more [0..*] id (CONF:7410, R2.0=CONF:1098-7410)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationInformation: 2.16.840.1.113883.10.20.22.4.23 -->

<pattern id="p-ProgressNote_3A_MedicationInformation_classCode_4_69_12_i_b-error_mdht" see="#p-ProgressNote_3A_MedicationInformation_classCode_4_69_12_i_b-error_mdht" name="p-ProgressNote_3A_MedicationInformation_classCode_4_69_12_i_b-error_mdht">
		<!--
			UML path: /MedicationInformation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/consumable/medicationInformation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct">
		<!--
			OCL: isDefined('classCode') and self.classCode=vocab::RoleClassManufacturedProduct::MANU
			Constraint name: MedicationInformationClassCode
		-->
	<assert test="attribute::node()[name() = 'classCode'] and @classCode = 'MANU'">Error: ProgressNote - 4.69.12.i.b classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;MANU&quot;  (CONF:7408, R2.0=CONF:1098-7408)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationInformation: 2.16.840.1.113883.10.20.22.4.23 -->

<pattern id="p-ProgressNote_3A_MedicationInformation_manufacturerOrganization_4_69_12_i_d-error_mdht" see="#p-ProgressNote_3A_MedicationInformation_manufacturerOrganization_4_69_12_i_d-error_mdht" name="p-ProgressNote_3A_MedicationInformation_manufacturerOrganization_4_69_12_i_d-error_mdht">
		<!--
			UML path: /MedicationInformation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/consumable/medicationInformation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct">
		<!--
			OCL: self.manufacturerOrganization->select(manufacturerOrganization : cda::Organization | not manufacturerOrganization.oclIsUndefined() and manufacturerOrganization.oclIsKindOf(cda::Organization))->size() <= 1
			Constraint name: MedicationInformationManufacturerOrganization
		-->
	<assert test="count(cda:manufacturerOrganization) &lt;= 1">Error: ProgressNote - 4.69.12.i.d Drug Manufacturer
		Conformance: MAY contain  [0..1] manufacturerOrganization (Drug Manufacturer) such that it  (CONF:7416, R2.0=CONF:1098-7416)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationInformationManufacturedMaterial -->

<pattern id="p-ProgressNote_3A_MedicationInformationManufacturedMaterial_MedicationInformationMedicationInformationManufacturedMaterialReference_4_68_17_i_e_2-error_mdht" see="#p-ProgressNote_3A_MedicationInformationManufacturedMaterial_MedicationInformationMedicationInformationManufacturedMaterialReference_4_68_17_i_e_2-error_mdht" name="p-ProgressNote_3A_MedicationInformationManufacturedMaterial_MedicationInformationMedicationInformationManufacturedMaterialReference_4_68_17_i_e_2-error_mdht">
		<!--
			UML path: /MedicationInformation/manufacturedMaterial
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/consumable/medicationInformation/manufacturedMaterial
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial">
		<!--
			OCL: self.code.originalText->size() = 1
			Constraint name: MedicationInformationMedicationInformationManufacturedMaterialCodeOriginalText
		-->
	<assert test="count(cda:code/cda:originalText) = 1">Error: ProgressNote - 4.68.17.i.e.2 MedicationInformationMedicationInformationManufacturedMaterialReference
		Conformance: originalText, if present, SHOULD contain zero or one [0..1] reference
		Analysis: code SHOULD contain zero or one [0..1] originalText
		Validation message: n/a	</assert>
		<!--
			OCL: self.code.originalText->size() = 1 implies self.code.originalText->one(reference->size() = 1)
			Constraint name: MedicationInformationMedicationInformationManufacturedMaterialReference
		-->
	<assert test="not(count(cda:code/cda:originalText) = 1) or count(cda:code/cda:originalText[count(cda:reference) = 1])=1">Error: ProgressNote - 4.68.17.i.e.2 MedicationInformationMedicationInformationManufacturedMaterialReference
		Conformance: originalText, if present, SHOULD contain zero or one [0..1] reference
		Analysis: originalText, if present, SHOULD contain zero or one [0..1] reference
		Validation message: n/a	</assert>
		<!--
			OCL: self.code.originalText.reference->size() = 1 implies self.code.originalText.reference.value->size() = 1
			Constraint name: MedicationInformationMedicationInformationManufacturedMaterialOriginalTextReferenceValue
		-->
	<assert test="not(count(cda:code/cda:originalText/cda:reference) = 1) or count(cda:code/cda:originalText/cda:reference/@value) = 1">Error: ProgressNote - 4.68.17.i.e.2 MedicationInformationMedicationInformationManufacturedMaterialReference
		Conformance: originalText, if present, SHOULD contain zero or one [0..1] reference
		Analysis: reference, if present, SHOULD contain zero or one [0..1] @value
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationInformationManufacturedMaterial -->

<pattern id="p-ProgressNote_3A_MedicationInformationManufacturedMaterial_code_4_68_17_i_e_1-error_mdht" see="#p-ProgressNote_3A_MedicationInformationManufacturedMaterial_code_4_68_17_i_e_1-error_mdht" name="p-ProgressNote_3A_MedicationInformationManufacturedMaterial_code_4_68_17_i_e_1-error_mdht">
		<!--
			UML path: /MedicationInformation/manufacturedMaterial
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/consumable/medicationInformation/manufacturedMaterial
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial">
		<!--
			OCL: true
			Constraint name: MedicationInformationMedicationInformationManufacturedMaterialCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.68.17.i.e.1 code
		Conformance: SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Medication Clinical Drug Name Value Set 2.16.840.1.113883.3.88.12.80.17 DYNAMIC (CONF:7412)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.88' and not value.code.oclIsUndefined()
			Constraint name: MedicationInformationMedicationInformationManufacturedMaterialCode
		-->
	<assert test="cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.88' and @code]">Error: ProgressNote - 4.68.17.i.e.1 code
		Conformance: SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Medication Clinical Drug Name Value Set 2.16.840.1.113883.3.88.12.80.17 DYNAMIC (CONF:7412)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- MedicationInformationManufacturedMaterial -->

<pattern id="p-ProgressNote_3A_MedicationInformationManufacturedMaterial_MedicationInformationMedicationInformationManufacturedMaterialCodeTranslation_4_68_17_i_e_3-error_mdht" see="#p-ProgressNote_3A_MedicationInformationManufacturedMaterial_MedicationInformationMedicationInformationManufacturedMaterialCodeTranslation_4_68_17_i_e_3-error_mdht" name="p-ProgressNote_3A_MedicationInformationManufacturedMaterial_MedicationInformationMedicationInformationManufacturedMaterialCodeTranslation_4_68_17_i_e_3-error_mdht">
		<!--
			UML path: /MedicationInformation/manufacturedMaterial
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/consumable/medicationInformation/manufacturedMaterial
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial">
		<!--
			OCL: self.code->size() = 1 implies self.code.translation->size() > 0
			Constraint name: MedicationInformationMedicationInformationManufacturedMaterialCodeTranslation
		-->
	<assert test="not(count(cda:code) = 1) or count(cda:code/cda:translation) &gt; 0">Error: ProgressNote - 4.68.17.i.e.3 MedicationInformationMedicationInformationManufacturedMaterialCodeTranslation
		Conformance: code MAY contain zero or more [0..*] translation
		Analysis: code MAY contain zero or more [0..*] translation
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Precondition -->

<pattern id="p-ProgressNote_3A_Precondition_preconditionForSubstanceAdministration_4_68_18_ii-error_mdht" see="#p-ProgressNote_3A_Precondition_preconditionForSubstanceAdministration_4_68_18_ii-error_mdht" name="p-ProgressNote_3A_Precondition_preconditionForSubstanceAdministration_4_68_18_ii-error_mdht">
		<!--
			UML path: /MedicationActivity/precondition
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/precondition
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition">
		<!--
			OCL: self.criterion->one(criterion : cda::Criterion | not criterion.oclIsUndefined() and criterion.oclIsKindOf(consol::PreconditionForSubstanceAdministration))
			Constraint name: MedicationActivityPreconditionPreconditionForSubstanceAdministration
		-->
	<assert test="count(cda:criterion[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.25'])=1">Error: ProgressNote - 4.68.18.ii preconditionForSubstanceAdministration
		Conformance: SHALL contain exactly one [1..1] criterion (CONF:16092)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Precondition -->

<pattern id="p-ProgressNote_3A_Precondition_typeCode_4_68_18_i-error_mdht" see="#p-ProgressNote_3A_Precondition_typeCode_4_68_18_i-error_mdht" name="p-ProgressNote_3A_Precondition_typeCode_4_68_18_i-error_mdht">
		<!--
			UML path: /MedicationActivity/precondition
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/precondition
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition">
		<!--
			OCL: isDefined('typeCode') and self.typeCode=vocab::ActRelationshipType::PRCN
			Constraint name: MedicationActivityPreconditionTypeCode
		-->
	<assert test="attribute::node()[name() = 'typeCode'] and @typeCode = 'PRCN'">Error: ProgressNote - 4.68.18.i typeCode
		Conformance: SHALL contain exactly one [1..1] @typeCode=&quot;PRCN&quot;  (CONF:7550)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreconditionForSubstanceAdministration: 2.16.840.1.113883.10.20.22.4.25 -->

<pattern id="p-ProgressNote_3A_PreconditionForSubstanceAdministration_templateId_4_68_18_ii_a-error_mdht" see="#p-ProgressNote_3A_PreconditionForSubstanceAdministration_templateId_4_68_18_ii_a-error_mdht" name="p-ProgressNote_3A_PreconditionForSubstanceAdministration_templateId_4_68_18_ii_a-error_mdht">
		<!--
			UML path: /PreconditionForSubstanceAdministration
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/precondition/preconditionForSubstanceAdministration
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition/cda:criterion[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.25']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.25')
			Constraint name: PreconditionForSubstanceAdministrationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.25'">Error: ProgressNote - 4.68.18.ii.a templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7372, CONF:10517 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.25&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreconditionForSubstanceAdministration: 2.16.840.1.113883.10.20.22.4.25 -->

<pattern id="p-ProgressNote_3A_PreconditionForSubstanceAdministration_code_4_68_18_ii_b-error_mdht" see="#p-ProgressNote_3A_PreconditionForSubstanceAdministration_code_4_68_18_ii_b-error_mdht" name="p-ProgressNote_3A_PreconditionForSubstanceAdministration_code_4_68_18_ii_b-error_mdht">
		<!--
			UML path: /PreconditionForSubstanceAdministration
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/precondition/preconditionForSubstanceAdministration
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition/cda:criterion[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.25']">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: PreconditionForSubstanceAdministrationCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: ProgressNote - 4.68.18.ii.b code
		Conformance: SHOULD contain zero or one [0..1] code (CONF:16854)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreconditionForSubstanceAdministration: 2.16.840.1.113883.10.20.22.4.25 -->

<pattern id="p-ProgressNote_3A_PreconditionForSubstanceAdministration_text_4_68_18_ii_c-error_mdht" see="#p-ProgressNote_3A_PreconditionForSubstanceAdministration_text_4_68_18_ii_c-error_mdht" name="p-ProgressNote_3A_PreconditionForSubstanceAdministration_text_4_68_18_ii_c-error_mdht">
		<!--
			UML path: /PreconditionForSubstanceAdministration
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/precondition/preconditionForSubstanceAdministration
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition/cda:criterion[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.25']">
		<!--
			OCL: ((not self.text.oclIsUndefined()) and self.text.isNullFlavorUndefined()) implies (not self.text.oclIsUndefined())
			Constraint name: PreconditionForSubstanceAdministrationText
		-->
	<assert test="not(cda:text and not(cda:text/@nullFlavor)) or cda:text">Error: ProgressNote - 4.68.18.ii.c text
		Conformance: MAY contain zero or one [0..1] text (CONF:7373)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreconditionForSubstanceAdministration: 2.16.840.1.113883.10.20.22.4.25 -->

<pattern id="p-ProgressNote_3A_PreconditionForSubstanceAdministration_value_4_68_18_ii_d-error_mdht" see="#p-ProgressNote_3A_PreconditionForSubstanceAdministration_value_4_68_18_ii_d-error_mdht" name="p-ProgressNote_3A_PreconditionForSubstanceAdministration_value_4_68_18_ii_d-error_mdht">
		<!--
			UML path: /PreconditionForSubstanceAdministration
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/precondition/preconditionForSubstanceAdministration
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition/cda:criterion[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.25']">
		<!--
			OCL: ((not self.value.oclIsUndefined()) and self.value.isNullFlavorUndefined()) implies (self.value.oclIsTypeOf(datatypes::CD))
			Constraint name: PreconditionForSubstanceAdministrationValue
		-->
	<assert test="not(cda:value and not(cda:value/@nullFlavor)) or not(cda:value[not(@xsi:type='CD')])">Error: ProgressNote - 4.68.18.ii.d value
		Conformance: SHOULD contain zero or one [0..1] value with @xsi:type=&quot;CD&quot; (CONF:7369)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InstructionsEntryRelationship -->

<pattern id="p-ProgressNote_3A_InstructionsEntryRelationship_instructions_4_68_19_i-error_mdht" see="#p-ProgressNote_3A_InstructionsEntryRelationship_instructions_4_68_19_i-error_mdht" name="p-ProgressNote_3A_InstructionsEntryRelationship_instructions_4_68_19_i-error_mdht">
		<!--
			UML path: /MedicationActivity/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship">
		<!--
			OCL: self.act->select(act : cda::Act | not act.oclIsUndefined() and act.oclIsKindOf(consol::Instructions))->size() <= 1
			Constraint name: MedicationActivityInstructionsEntryRelationshipInstructions
		-->
	<assert test="count(cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']) &lt;= 1">Error: ProgressNote - 4.68.19.i instructions
		Conformance: MAY contain zero or one [0..1] act (CONF:7539, CONF:7540, CONF:16088)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Instructions: 2.16.840.1.113883.10.20.22.4.20 -->

<pattern id="p-ProgressNote_3A_Instructions_InstructionsTextReference_4_64_7-error_mdht" see="#p-ProgressNote_3A_Instructions_InstructionsTextReference_4_64_7-error_mdht" name="p-ProgressNote_3A_Instructions_InstructionsTextReference_4_64_7-error_mdht">
		<!--
			UML path: /Instructions
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/entryRelationship/instructions
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">
		<!--
			OCL: not self.text.oclIsUndefined() implies self.text->forAll(reference->size() = 1)
			Constraint name: InstructionsTextReference
		-->
	<assert test="not(cda:text) or not(cda:text[not(count(cda:reference) = 1)])">Error: ProgressNote - 4.64.7 InstructionsTextReference
		Conformance: This text, if present, SHOULD contain zero or one [0..1] reference (CONF:15577)
		Analysis: This text, if present, SHOULD contain zero or one [0..1] reference
		Validation message: n/a	</assert>
		<!--
			OCL: self.text->forAll(reference->size() = 1) implies self.text->forAll(reference->one(value->size() = 1))
			Constraint name: InstructionsReferenceValue
		-->
	<assert test="cda:text[not(count(cda:reference) = 1)] or not(cda:text[not(count(cda:reference[count(@value) = 1])=1)])">Error: ProgressNote - 4.64.7 InstructionsTextReference
		Conformance: This text, if present, SHOULD contain zero or one [0..1] reference (CONF:15577)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.text.reference.value.oclIsUndefined() implies not self.getSection().text.getText(self.text.reference.value.substring(2, self.text.reference.value.size())).oclIsUndefined()
			Constraint name: InstructionsTextReferenceValue
		-->
	<assert test="not(cda:text/cda:reference/@value) or string(ancestor::cda:section[1]/cda:text[@id=substring(cda:text/cda:reference/@value,2,string-length(cda:text/cda:reference/@value)-2)]// text())">Error: ProgressNote - 4.64.7 InstructionsTextReference
		Conformance: This text, if present, SHOULD contain zero or one [0..1] reference (CONF:15577)
		Analysis: reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1)
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Instructions: 2.16.840.1.113883.10.20.22.4.20 -->

<pattern id="p-ProgressNote_3A_Instructions_text_4_64_5-error_mdht" see="#p-ProgressNote_3A_Instructions_text_4_64_5-error_mdht" name="p-ProgressNote_3A_Instructions_text_4_64_5-error_mdht">
		<!--
			UML path: /Instructions
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/entryRelationship/instructions
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">
		<!--
			OCL: ((not self.text.oclIsUndefined()) and self.text.isNullFlavorUndefined()) implies (not self.text.oclIsUndefined())
			Constraint name: InstructionsText
		-->
	<assert test="not(cda:text and not(cda:text/@nullFlavor)) or cda:text">Error: ProgressNote - 4.64.5 text
		Conformance: SHOULD contain zero or one [0..1] text (CONF:7395)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Instructions: 2.16.840.1.113883.10.20.22.4.20 -->

<pattern id="p-ProgressNote_3A_Instructions_moodCode_4_63_3-error_mdht" see="#p-ProgressNote_3A_Instructions_moodCode_4_63_3-error_mdht" name="p-ProgressNote_3A_Instructions_moodCode_4_63_3-error_mdht">
		<!--
			UML path: /Instructions
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/entryRelationship/instructions
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">
		<!--
			OCL: self.moodCode=vocab::x_DocumentActMood::INT
			Constraint name: InstructionsMoodCode
		-->
	<assert test="@moodCode = 'INT'">Error: ProgressNote - 4.63.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;INT&quot;  (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7392, R2.0=CONF:1098-7392)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Instructions: 2.16.840.1.113883.10.20.22.4.20 -->

<pattern id="p-ProgressNote_3A_Instructions_classCode_4_63_2-error_mdht" see="#p-ProgressNote_3A_Instructions_classCode_4_63_2-error_mdht" name="p-ProgressNote_3A_Instructions_classCode_4_63_2-error_mdht">
		<!--
			UML path: /Instructions
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/entryRelationship/instructions
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">
		<!--
			OCL: self.classCode=vocab::x_ActClassDocumentEntryAct::ACT
			Constraint name: InstructionsClassCode
		-->
	<assert test="@classCode = 'ACT'">Error: ProgressNote - 4.63.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;ACT&quot; Act (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7391, R2.0=CONF:1098-7391)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Instructions: 2.16.840.1.113883.10.20.22.4.20 -->

<pattern id="p-ProgressNote_3A_Instructions_statusCode_4_63_6-error_mdht" see="#p-ProgressNote_3A_Instructions_statusCode_4_63_6-error_mdht" name="p-ProgressNote_3A_Instructions_statusCode_4_63_6-error_mdht">
		<!--
			UML path: /Instructions
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/entryRelationship/instructions
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">
		<!--
			OCL: true
			Constraint name: InstructionsStatusCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.63.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot; Completed (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7396, R2.0=CONF:1098-7396, R2.0=CONF:1098-19106)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed'
			Constraint name: InstructionsStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: ProgressNote - 4.63.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot; Completed (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7396, R2.0=CONF:1098-7396, R2.0=CONF:1098-19106)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Instructions: 2.16.840.1.113883.10.20.22.4.20 -->

<pattern id="p-ProgressNote_3A_Instructions_templateId_4_64_1-error_mdht" see="#p-ProgressNote_3A_Instructions_templateId_4_64_1-error_mdht" name="p-ProgressNote_3A_Instructions_templateId_4_64_1-error_mdht">
		<!--
			UML path: /Instructions
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/entryRelationship/instructions
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.20')
			Constraint name: InstructionsTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20'">Error: ProgressNote - 4.64.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7393, CONF:10503 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.20&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Instructions: 2.16.840.1.113883.10.20.22.4.20 -->

<pattern id="p-ProgressNote_3A_Instructions_code_4_63_4-error_mdht" see="#p-ProgressNote_3A_Instructions_code_4_63_4-error_mdht" name="p-ProgressNote_3A_Instructions_code_4_63_4-error_mdht">
		<!--
			UML path: /Instructions
			UML root path: /ContinuityOfCareDocument/component/structuredBody/medicationsSection/medicationsSection/entry/medication/entryRelationship/instructions
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: InstructionsCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.63.4 code
		Conformance: SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet PatientEducation 2.16.840.1.113883.11.20.9.34 DYNAMIC (CONF:7394, R2.0=CONF:1098-7394)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and not value.code.oclIsUndefined()
			Constraint name: InstructionsCode
		-->
	<assert test="cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.96' and @code]">Error: ProgressNote - 4.63.4 code
		Conformance: SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet PatientEducation 2.16.840.1.113883.11.20.9.34 DYNAMIC (CONF:7394, R2.0=CONF:1098-7394)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_objectiveSection_2_17_6_i_h_1-error_mdht" see="#p-ProgressNote_2_Component_objectiveSection_2_17_6_i_h_1-error_mdht" name="p-ProgressNote_2_Component_objectiveSection_2_17_6_i_h_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/objectiveSection
			UML root path: /ProgressNote/component/structuredBody/objectiveSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ObjectiveSection))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentObjectiveSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.1']) &lt;= 1">Error: ProgressNote - 2.17.6.i.h.1 objectiveSection
		Conformance: MAY contain zero or one [0..1] section (CONF:8770)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ObjectiveSection: 2.16.840.1.113883.10.20.21.2.1 -->

<pattern id="p-ProgressNote_2_ObjectiveSection_templateId_3_71_1-error_mdht" see="#p-ProgressNote_2_ObjectiveSection_templateId_3_71_1-error_mdht" name="p-ProgressNote_2_ObjectiveSection_templateId_3_71_1-error_mdht">
		<!--
			UML path: /ObjectiveSection
			UML root path: /ProgressNote/component/structuredBody/objectiveSection/objectiveSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.1']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.21.2.1')
			Constraint name: ObjectiveSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.1'">Error: ProgressNote - 3.71.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7869, CONF:10462 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.21.2.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ObjectiveSection: 2.16.840.1.113883.10.20.21.2.1 -->

<pattern id="p-ProgressNote_2_ObjectiveSection_title_3_71_4-error_mdht" see="#p-ProgressNote_2_ObjectiveSection_title_3_71_4-error_mdht" name="p-ProgressNote_2_ObjectiveSection_title_3_71_4-error_mdht">
		<!--
			UML path: /ObjectiveSection
			UML root path: /ProgressNote/component/structuredBody/objectiveSection/objectiveSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.1']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ObjectiveSectionTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.71.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:7871)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ObjectiveSection: 2.16.840.1.113883.10.20.21.2.1 -->

<pattern id="p-ProgressNote_2_ObjectiveSection_text_3_71_3-error_mdht" see="#p-ProgressNote_2_ObjectiveSection_text_3_71_3-error_mdht" name="p-ProgressNote_2_ObjectiveSection_text_3_71_3-error_mdht">
		<!--
			UML path: /ObjectiveSection
			UML root path: /ProgressNote/component/structuredBody/objectiveSection/objectiveSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.1']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ObjectiveSectionText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.71.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7872)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ObjectiveSection: 2.16.840.1.113883.10.20.21.2.1 -->

<pattern id="p-ProgressNote_2_ObjectiveSection_code_3_71_2-error_mdht" see="#p-ProgressNote_2_ObjectiveSection_code_3_71_2-error_mdht" name="p-ProgressNote_2_ObjectiveSection_code_3_71_2-error_mdht">
		<!--
			UML path: /ObjectiveSection
			UML root path: /ProgressNote/component/structuredBody/objectiveSection/objectiveSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.1']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '61149-1' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ObjectiveSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '61149-1' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.71.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15389)/@code=&quot;61149-1&quot; Objective (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15390)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ObjectiveSectionCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.71.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15389)/@code=&quot;61149-1&quot; Objective (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15390)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_physicalExamSection_2_17_6_i_i_1-error_mdht" see="#p-ProgressNote_2_Component_physicalExamSection_2_17_6_i_i_1-error_mdht" name="p-ProgressNote_2_Component_physicalExamSection_2_17_6_i_i_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/physicalExamSection
			UML root path: /ProgressNote/component/structuredBody/physicalExamSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::PhysicalExamSection))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentPhysicalExamSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']) &lt;= 1">Error: ProgressNote - 2.17.6.i.i.1 physicalExamSection
		Conformance: MAY contain zero or one [0..1] section (CONF:8780)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PhysicalExamSection: 2.16.840.1.113883.10.20.2.10 -->

<pattern id="p-ProgressNote_2_PhysicalExamSection_title_3_77_3-error_mdht" see="#p-ProgressNote_2_PhysicalExamSection_title_3_77_3-error_mdht" name="p-ProgressNote_2_PhysicalExamSection_title_3_77_3-error_mdht">
		<!--
			UML path: /PhysicalExamSection
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: PhysicalExamSectionTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.77.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:7808, R2.1=CONF:1198-7808)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PhysicalExamSection: 2.16.840.1.113883.10.20.2.10 -->

<pattern id="p-ProgressNote_2_PhysicalExamSection_code_3_76_2-error_mdht" see="#p-ProgressNote_2_PhysicalExamSection_code_3_76_2-error_mdht" name="p-ProgressNote_2_PhysicalExamSection_code_3_76_2-error_mdht">
		<!--
			UML path: /PhysicalExamSection
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '29545-1' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: PhysicalExamSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '29545-1' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.76.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15397)/@code=&quot;29545-1&quot; PHYSICAL EXAMINATION (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15398)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: PhysicalExamSectionCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.76.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15397)/@code=&quot;29545-1&quot; PHYSICAL EXAMINATION (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15398)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PhysicalExamSection: 2.16.840.1.113883.10.20.2.10 -->

<pattern id="p-ProgressNote_3A_PhysicalExamSection_entry_3_76_5-error_mdht" see="#p-ProgressNote_3A_PhysicalExamSection_entry_3_76_5-error_mdht" name="p-ProgressNote_3A_PhysicalExamSection_entry_3_76_5-error_mdht">
		<!--
			UML path: /PhysicalExamSection
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PhysicalExamSection::PressureUlcerObservationEntry))
			Constraint name: PhysicalExamSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.76.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PhysicalExamSection: 2.16.840.1.113883.10.20.2.10 -->

<pattern id="p-ProgressNote_2_PhysicalExamSection_templateId_3_76_1-error_mdht" see="#p-ProgressNote_2_PhysicalExamSection_templateId_3_76_1-error_mdht" name="p-ProgressNote_2_PhysicalExamSection_templateId_3_76_1-error_mdht">
		<!--
			UML path: /PhysicalExamSection
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.2.10')
			Constraint name: PhysicalExamSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.2.10'">Error: ProgressNote - 3.76.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10465 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PhysicalExamSection: 2.16.840.1.113883.10.20.2.10 -->

<pattern id="p-ProgressNote_3A_PhysicalExamSection_entry_3_76_6-error_mdht" see="#p-ProgressNote_3A_PhysicalExamSection_entry_3_76_6-error_mdht" name="p-ProgressNote_3A_PhysicalExamSection_entry_3_76_6-error_mdht">
		<!--
			UML path: /PhysicalExamSection
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PhysicalExamSection::NumberOfPressureUlcersObservationEntry))
			Constraint name: PhysicalExamSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.76.6 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PhysicalExamSection: 2.16.840.1.113883.10.20.2.10 -->

<pattern id="p-ProgressNote_2_PhysicalExamSection_text_3_77_4-error_mdht" see="#p-ProgressNote_2_PhysicalExamSection_text_3_77_4-error_mdht" name="p-ProgressNote_2_PhysicalExamSection_text_3_77_4-error_mdht">
		<!--
			UML path: /PhysicalExamSection
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: PhysicalExamSectionText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.77.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7809, R2.1=CONF:1198-7809)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PhysicalExamSection: 2.16.840.1.113883.10.20.2.10 -->

<pattern id="p-ProgressNote_3A_PhysicalExamSection_entry_3_76_7-error_mdht" see="#p-ProgressNote_3A_PhysicalExamSection_entry_3_76_7-error_mdht" name="p-ProgressNote_3A_PhysicalExamSection_entry_3_76_7-error_mdht">
		<!--
			UML path: /PhysicalExamSection
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PhysicalExamSection::HighestPressureUlcerStageEntry))
			Constraint name: PhysicalExamSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.76.7 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservationEntry -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservationEntry_pressureUlcerObservation_3_76_5_i-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservationEntry_pressureUlcerObservation_3_76_5_i-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservationEntry_pressureUlcerObservation_3_76_5_i-error_mdht">
		<!--
			UML path: /PhysicalExamSection/entry
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry">
		<!--
			OCL: self.observation->select(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::PressureUlcerObservation))->size() >= 0
			Constraint name: PhysicalExamSectionPressureUlcerObservationEntryPressureUlcerObservation
		-->
	<assert test="count(cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']) &gt;= 0">Error: ProgressNote - 3.76.5.i pressureUlcerObservation
		Conformance: MAY contain zero or more [0..*] observation (CONF:17094, CONF:17095)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_text_4_110_7-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_text_4_110_7-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_text_4_110_7-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: ((not self.text.oclIsUndefined()) and self.text.isNullFlavorUndefined()) implies (not self.text.oclIsUndefined())
			Constraint name: PressureUlcerObservationText
		-->
	<assert test="not(cda:text and not(cda:text/@nullFlavor)) or cda:text">Error: ProgressNote - 4.110.7 text
		Conformance: SHOULD contain zero or one [0..1] text (CONF:14391)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_statusCode_4_110_8-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_statusCode_4_110_8-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_statusCode_4_110_8-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: true
			Constraint name: PressureUlcerObservationStatusCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.110.8 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:14394)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed'
			Constraint name: PressureUlcerObservationStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: ProgressNote - 4.110.8 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:14394)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_targetSiteCode_4_110_11-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_targetSiteCode_4_110_11-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_targetSiteCode_4_110_11-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: ((not self.targetSiteCode->isEmpty()) and self.targetSiteCode->exists(element | element.isNullFlavorUndefined())) implies (not self.targetSiteCode->isEmpty())
			Constraint name: PressureUlcerObservationTargetSiteCodeP
		-->
	<assert test="not(cda:targetSiteCode and cda:targetSiteCode[not(@nullFlavor)]) or cda:targetSiteCode">Error: ProgressNote - 4.110.11 targetSiteCode
		Conformance: SHOULD contain zero or more [0..*] targetSiteCode (CONF:14797), which SHOULD be selected from ValueSet Pressure Point 2.16.840.1.113883.11.20.9.36 DYNAMIC (CONF:14798)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.targetSiteCode->isEmpty()) and self.targetSiteCode->exists(element | element.isNullFlavorUndefined())) implies (self.targetSiteCode->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = element.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and (value.code = '79951008' or value.code = '23747009' or value.code = '76552005' or value.code = '45980000' or value.code = '74757004' or value.code = '51027004' or value.code = '304037003' or value.code = '286591006' or value.code = '49812005' or value.code = '29850006' or value.code = '22180002')))
			Constraint name: PressureUlcerObservationTargetSiteCode
		-->
	<assert test="not(cda:targetSiteCode and cda:targetSiteCode[not(@nullFlavor)]) or not(cda:targetSiteCode[not(. and @codeSystem = '2.16.840.1.113883.6.96' and (@code = '79951008' or @code = '23747009' or @code = '76552005' or @code = '45980000' or @code = '74757004' or @code = '51027004' or @code = '304037003' or @code = '286591006' or @code = '49812005' or @code = '29850006' or @code = '22180002'))])">Error: ProgressNote - 4.110.11 targetSiteCode
		Conformance: SHOULD contain zero or more [0..*] targetSiteCode (CONF:14797), which SHOULD be selected from ValueSet Pressure Point 2.16.840.1.113883.11.20.9.36 DYNAMIC (CONF:14798)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_PressureUlcerObservationTargetSiteQualifier_4_110_15-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_PressureUlcerObservationTargetSiteQualifier_4_110_15-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_PressureUlcerObservationTargetSiteQualifier_4_110_15-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: self.targetSiteCode->forAll(qualifier->size() = 1)
			Constraint name: PressureUlcerObservationTargetSiteQualifier
		-->
	<assert test="not(cda:targetSiteCode[not(count(cda:qualifier) = 1)])">Error: ProgressNote - 4.110.15 PressureUlcerObservationTargetSiteQualifier
		Conformance: targetSiteCodes SHOULD contain zero or one [0..1] qualifier (CONF:14799)
		Analysis: targetSiteCodes SHOULD contain zero or one [0..1] qualifier
		Validation message: n/a	</assert>
		<!--
			OCL: self.targetSiteCode.qualifier->forAll(name->size() = 1)
			Constraint name: PressureUlcerObservationTargetSiteQualifierName
		-->
	<assert test="not(cda:targetSiteCode/cda:qualifier[not(count(cda:name) = 1)])">Error: ProgressNote - 4.110.15 PressureUlcerObservationTargetSiteQualifier
		Conformance: targetSiteCodes SHOULD contain zero or one [0..1] qualifier (CONF:14799)
		Analysis: qualifier SHALL contain exactly one [1..1] name
		Validation message: n/a	</assert>
		<!--
			OCL: self.targetSiteCode.qualifier->forAll(value->size() = 1)
			Constraint name: PressureUlcerObservationTargetSiteQualifierValue
		-->
	<assert test="not(cda:targetSiteCode/cda:qualifier[not(count(cda:value) = 1)])">Error: ProgressNote - 4.110.15 PressureUlcerObservationTargetSiteQualifier
		Conformance: targetSiteCodes SHOULD contain zero or one [0..1] qualifier (CONF:14799)
		Analysis: qualifier SHALL contain exactly one [1..1] value
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_ProblemObservation_4_114-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_ProblemObservation_4_114-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_ProblemObservation_4_114-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: self.value->forAll(val | not val.isNullFlavorUndefined())
			Constraint name: PressureUlcerObservationValueNullFlavor
		-->
	<assert test="not(cda:value[not(@nullFlavor)])">Error: ProgressNote - 4.114 ProblemObservation
		Conformance: SHALL contain at least one [1..*] observation (CONF:15980)
		Analysis: value MAY contain zero or one [0..1] @nullFlavor
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_entryRelationship_4_110_12-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_entryRelationship_4_110_12-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_entryRelationship_4_110_12-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: self.entryRelationship->select(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(cda::EntryRelationship))->select(typeCode=vocab::x_ActRelationshipEntryRelationship::COMP and observation.code.code='401238003')->size() <= 1
			Constraint name: PressureUlcerObservationEntryRelationship
		-->
	<assert test="count(cda:entryRelationship[@typeCode = 'COMP' and cda:observation/cda:code/@code = '401238003']) &lt;= 1">Error: ProgressNote - 4.110.12 entryRelationship
		Conformance: SHOULD contain zero or one [0..1] entryRelationship (CONF:14410)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_classCode_4_110_2-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_classCode_4_110_2-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_classCode_4_110_2-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: PressureUlcerObservationClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: ProgressNote - 4.110.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:14383)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_entryRelationship3_4_110_14-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_entryRelationship3_4_110_14-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_entryRelationship3_4_110_14-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: self.entryRelationship->select(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(cda::EntryRelationship))->select(typeCode=vocab::x_ActRelationshipEntryRelationship::COMP and observation.code.code='425094009')->size() <= 1
			Constraint name: PressureUlcerObservationEntryRelationship3
		-->
	<assert test="count(cda:entryRelationship[@typeCode = 'COMP' and cda:observation/cda:code/@code = '425094009']) &lt;= 1">Error: ProgressNote - 4.110.14 entryRelationship3
		Conformance: SHOULD contain zero or one [0..1] entryRelationship (CONF:14605)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_value_4_110_10-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_value_4_110_10-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_value_4_110_10-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = element.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and (value.code = '421076008' or value.code = '420324007' or value.code = '421927004' or value.code = '420597008' or value.code = '421594008'))
			Constraint name: PressureUlcerObservationValue
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(. and @xsi:type='CD' and @codeSystem = '2.16.840.1.113883.6.96' and (@code = '421076008' or @code = '420324007' or @code = '421927004' or @code = '420597008' or @code = '421594008'))])">Error: ProgressNote - 4.110.10 value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;CD&quot; (CONF:14396), which SHOULD be selected from ValueSet Pressure Ulcer Stage 2.16.840.1.113883.11.20.9.35 STATIC 2014-09-01
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | element.oclIsTypeOf(datatypes::CD))
			Constraint name: PressureUlcerObservationValueP
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(@xsi:type='CD')])">Error: ProgressNote - 4.110.10 value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;CD&quot; (CONF:14396), which SHOULD be selected from ValueSet Pressure Ulcer Stage 2.16.840.1.113883.11.20.9.35 STATIC 2014-09-01
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_moodCode_4_110_3-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_moodCode_4_110_3-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_moodCode_4_110_3-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: PressureUlcerObservationMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.110.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:14384)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_templateId_4_110_1-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_templateId_4_110_1-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_templateId_4_110_1-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.70')
			Constraint name: PressureUlcerObservationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70'">Error: ProgressNote - 4.110.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:14387, CONF:14388 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.70&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_negationInd_4_110_4-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_negationInd_4_110_4-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_negationInd_4_110_4-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: (not self.negationInd.oclIsUndefined()) implies (not self.negationInd.oclIsUndefined())
			Constraint name: PressureUlcerObservationNegationInd
		-->
	<assert test="not(@negationInd) or @negationInd">Error: ProgressNote - 4.110.4 negationInd
		Conformance: MAY contain zero or one [0..1] @negationInd (CONF:14385)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_code_4_110_6-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_code_4_110_6-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_code_4_110_6-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: PressureUlcerObservationCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.110.6 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14759)/@code=&quot;ASSERTION&quot; Assertion (CodeSystem: 2.16.840.1.113883.5.4 HL7ActCode) (CONF:14760)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = 'ASSERTION' and value.codeSystem = '2.16.840.1.113883.5.4'
			Constraint name: PressureUlcerObservationCode
		-->
	<assert test="cda:code and cda:code[@code = 'ASSERTION' and @codeSystem = '2.16.840.1.113883.5.4']">Error: ProgressNote - 4.110.6 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14759)/@code=&quot;ASSERTION&quot; Assertion (CodeSystem: 2.16.840.1.113883.5.4 HL7ActCode) (CONF:14760)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_effectiveTime_4_110_9-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_effectiveTime_4_110_9-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_effectiveTime_4_110_9-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: PressureUlcerObservationEffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: ProgressNote - 4.110.9 effectiveTime
		Conformance: SHALL contain exactly one [1..1] effectiveTime (CONF:14395)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_id_4_110_5-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_id_4_110_5-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_id_4_110_5-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: PressureUlcerObservationId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.110.5 id
		Conformance: SHALL contain at least one [1..*] id (CONF:14389)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PressureUlcerObservation: 2.16.840.1.113883.10.20.22.4.70 -->

<pattern id="p-ProgressNote_3A_PressureUlcerObservation_entryRelationship2_4_110_13-error_mdht" see="#p-ProgressNote_3A_PressureUlcerObservation_entryRelationship2_4_110_13-error_mdht" name="p-ProgressNote_3A_PressureUlcerObservation_entryRelationship2_4_110_13-error_mdht">
		<!--
			UML path: /PressureUlcerObservation
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">
		<!--
			OCL: self.entryRelationship->select(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(cda::EntryRelationship))->select(typeCode=vocab::x_ActRelationshipEntryRelationship::COMP and observation.code.code='401239006')->size() <= 1
			Constraint name: PressureUlcerObservationEntryRelationship2
		-->
	<assert test="count(cda:entryRelationship[@typeCode = 'COMP' and cda:observation/cda:code/@code = '401239006']) &lt;= 1">Error: ProgressNote - 4.110.13 entryRelationship2
		Conformance: SHOULD contain zero or one [0..1] entryRelationship (CONF:14601)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EntryRelationship1 -->

<pattern id="p-ProgressNote_3A_EntryRelationship1_typeCode_4_110_12_i-error_mdht" see="#p-ProgressNote_3A_EntryRelationship1_typeCode_4_110_12_i-error_mdht" name="p-ProgressNote_3A_EntryRelationship1_typeCode_4_110_12_i-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '401238003']">
		<!--
			OCL: self.typeCode=vocab::x_ActRelationshipEntryRelationship::COMP
			Constraint name: PressureUlcerObservationEntryRelationship1TypeCode
		-->
	<assert test="@typeCode = 'COMP'">Error: ProgressNote - 4.110.12.i typeCode
		Conformance: SHALL contain exactly one [1..1] @typeCode=&quot;COMP&quot;  (CONF:14411)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EntryRelationship1 -->

<pattern id="p-ProgressNote_3A_EntryRelationship1_observation1_4_110_12_ii-error_mdht" see="#p-ProgressNote_3A_EntryRelationship1_observation1_4_110_12_ii-error_mdht" name="p-ProgressNote_3A_EntryRelationship1_observation1_4_110_12_ii-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '401238003']">
		<!--
			OCL: self.observation->one(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::PressureUlcerObservation::EntryRelationship1::Observation1))
			Constraint name: PressureUlcerObservationEntryRelationship1Observation1
		-->
	<assert test="count(cda:observation)=1">Error: ProgressNote - 4.110.12.ii observation1
		Conformance: SHALL contain exactly one [1..1] observation (CONF:14619)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation1 -->

<pattern id="p-ProgressNote_3A_Observation1_value_4_110_12_ii_d-error_mdht" see="#p-ProgressNote_3A_Observation1_value_4_110_12_ii_d-error_mdht" name="p-ProgressNote_3A_Observation1_value_4_110_12_ii_d-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship/observation1
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship/observation1
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401238003']">
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | element.oclIsTypeOf(datatypes::PQ))
			Constraint name: PressureUlcerObservationEntryRelationship1Observation1Value
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(@xsi:type='PQ')])">Error: ProgressNote - 4.110.12.ii.d value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;PQ&quot; (CONF:14622)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation1 -->

<pattern id="p-ProgressNote_3A_Observation1_classCode_4_110_12_ii_a-error_mdht" see="#p-ProgressNote_3A_Observation1_classCode_4_110_12_ii_a-error_mdht" name="p-ProgressNote_3A_Observation1_classCode_4_110_12_ii_a-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship/observation1
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship/observation1
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401238003']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: PressureUlcerObservationEntryRelationship1Observation1ClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: ProgressNote - 4.110.12.ii.a classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:14685)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation1 -->

<pattern id="p-ProgressNote_3A_Observation1_code_4_110_12_ii_c-error_mdht" see="#p-ProgressNote_3A_Observation1_code_4_110_12_ii_c-error_mdht" name="p-ProgressNote_3A_Observation1_code_4_110_12_ii_c-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship/observation1
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship/observation1
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401238003']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: PressureUlcerObservationEntryRelationship1Observation1CodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.110.12.ii.c code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14620)/@code=&quot;401238003&quot; Length of Wound (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:14621)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = '401238003' and value.codeSystem = '2.16.840.1.113883.6.96'
			Constraint name: PressureUlcerObservationEntryRelationship1Observation1Code
		-->
	<assert test="cda:code and cda:code[@code = '401238003' and @codeSystem = '2.16.840.1.113883.6.96']">Error: ProgressNote - 4.110.12.ii.c code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14620)/@code=&quot;401238003&quot; Length of Wound (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:14621)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation1 -->

<pattern id="p-ProgressNote_3A_Observation1_moodCode_4_110_12_ii_b-error_mdht" see="#p-ProgressNote_3A_Observation1_moodCode_4_110_12_ii_b-error_mdht" name="p-ProgressNote_3A_Observation1_moodCode_4_110_12_ii_b-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship/observation1
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship/observation1
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401238003']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: PressureUlcerObservationEntryRelationship1Observation1MoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.110.12.ii.b moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:14686)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EntryRelationship2 -->

<pattern id="p-ProgressNote_3A_EntryRelationship2_observation2_4_110_13_ii-error_mdht" see="#p-ProgressNote_3A_EntryRelationship2_observation2_4_110_13_ii-error_mdht" name="p-ProgressNote_3A_EntryRelationship2_observation2_4_110_13_ii-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship2
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship2
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '401239006']">
		<!--
			OCL: self.observation->one(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::PressureUlcerObservation::EntryRelationship2::Observation2))
			Constraint name: PressureUlcerObservationEntryRelationship2Observation2
		-->
	<assert test="count(cda:observation)=1">Error: ProgressNote - 4.110.13.ii observation2
		Conformance: SHALL contain exactly one [1..1] observation (CONF:14623)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EntryRelationship2 -->

<pattern id="p-ProgressNote_3A_EntryRelationship2_typeCode_4_110_13_i-error_mdht" see="#p-ProgressNote_3A_EntryRelationship2_typeCode_4_110_13_i-error_mdht" name="p-ProgressNote_3A_EntryRelationship2_typeCode_4_110_13_i-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship2
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship2
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '401239006']">
		<!--
			OCL: self.typeCode=vocab::x_ActRelationshipEntryRelationship::COMP
			Constraint name: PressureUlcerObservationEntryRelationship2TypeCode
		-->
	<assert test="@typeCode = 'COMP'">Error: ProgressNote - 4.110.13.i typeCode
		Conformance: SHALL contain exactly one [1..1] @typeCode=&quot;COMP&quot;  (CONF:14602)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation2 -->

<pattern id="p-ProgressNote_3A_Observation2_value_4_110_13_ii_d-error_mdht" see="#p-ProgressNote_3A_Observation2_value_4_110_13_ii_d-error_mdht" name="p-ProgressNote_3A_Observation2_value_4_110_13_ii_d-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship2/observation2
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship2/observation2
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401239006']">
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | element.oclIsTypeOf(datatypes::PQ))
			Constraint name: PressureUlcerObservationEntryRelationship2Observation2Value
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(@xsi:type='PQ')])">Error: ProgressNote - 4.110.13.ii.d value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;PQ&quot; (CONF:14626)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation2 -->

<pattern id="p-ProgressNote_3A_Observation2_moodCode_4_110_13_ii_b-error_mdht" see="#p-ProgressNote_3A_Observation2_moodCode_4_110_13_ii_b-error_mdht" name="p-ProgressNote_3A_Observation2_moodCode_4_110_13_ii_b-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship2/observation2
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship2/observation2
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401239006']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: PressureUlcerObservationEntryRelationship2Observation2MoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.110.13.ii.b moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:14688)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation2 -->

<pattern id="p-ProgressNote_3A_Observation2_classCode_4_110_13_ii_a-error_mdht" see="#p-ProgressNote_3A_Observation2_classCode_4_110_13_ii_a-error_mdht" name="p-ProgressNote_3A_Observation2_classCode_4_110_13_ii_a-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship2/observation2
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship2/observation2
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401239006']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: PressureUlcerObservationEntryRelationship2Observation2ClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: ProgressNote - 4.110.13.ii.a classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:14687)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation2 -->

<pattern id="p-ProgressNote_3A_Observation2_code_4_110_13_ii_c-error_mdht" see="#p-ProgressNote_3A_Observation2_code_4_110_13_ii_c-error_mdht" name="p-ProgressNote_3A_Observation2_code_4_110_13_ii_c-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship2/observation2
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship2/observation2
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401239006']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: PressureUlcerObservationEntryRelationship2Observation2CodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.110.13.ii.c code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14624)/@code=&quot;401239006&quot; Width of Wound (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:14625)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = '401239006' and value.codeSystem = '2.16.840.1.113883.6.96'
			Constraint name: PressureUlcerObservationEntryRelationship2Observation2Code
		-->
	<assert test="cda:code and cda:code[@code = '401239006' and @codeSystem = '2.16.840.1.113883.6.96']">Error: ProgressNote - 4.110.13.ii.c code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14624)/@code=&quot;401239006&quot; Width of Wound (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:14625)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EntryRelationship3 -->

<pattern id="p-ProgressNote_3A_EntryRelationship3_observation3_4_110_14_ii-error_mdht" see="#p-ProgressNote_3A_EntryRelationship3_observation3_4_110_14_ii-error_mdht" name="p-ProgressNote_3A_EntryRelationship3_observation3_4_110_14_ii-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship3
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship3
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '425094009']">
		<!--
			OCL: self.observation->one(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::PressureUlcerObservation::EntryRelationship3::Observation3))
			Constraint name: PressureUlcerObservationEntryRelationship3Observation3
		-->
	<assert test="count(cda:observation)=1">Error: ProgressNote - 4.110.14.ii observation3
		Conformance: SHALL contain exactly one [1..1] observation (CONF:14627)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EntryRelationship3 -->

<pattern id="p-ProgressNote_3A_EntryRelationship3_typeCode_4_110_14_i-error_mdht" see="#p-ProgressNote_3A_EntryRelationship3_typeCode_4_110_14_i-error_mdht" name="p-ProgressNote_3A_EntryRelationship3_typeCode_4_110_14_i-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship3
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship3
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '425094009']">
		<!--
			OCL: self.typeCode=vocab::x_ActRelationshipEntryRelationship::COMP
			Constraint name: PressureUlcerObservationEntryRelationship3TypeCode
		-->
	<assert test="@typeCode = 'COMP'">Error: ProgressNote - 4.110.14.i typeCode
		Conformance: SHALL contain exactly one [1..1] @typeCode=&quot;COMP&quot;  (CONF:14606)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation3 -->

<pattern id="p-ProgressNote_3A_Observation3_code_4_110_14_ii_c-error_mdht" see="#p-ProgressNote_3A_Observation3_code_4_110_14_ii_c-error_mdht" name="p-ProgressNote_3A_Observation3_code_4_110_14_ii_c-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship3/observation3
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship3/observation3
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '425094009']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: PressureUlcerObservationEntryRelationship3Observation3CodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.110.14.ii.c code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14628)/@code=&quot;425094009&quot; Depth of Wound (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:14629)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = '425094009' and value.codeSystem = '2.16.840.1.113883.6.96'
			Constraint name: PressureUlcerObservationEntryRelationship3Observation3Code
		-->
	<assert test="cda:code and cda:code[@code = '425094009' and @codeSystem = '2.16.840.1.113883.6.96']">Error: ProgressNote - 4.110.14.ii.c code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14628)/@code=&quot;425094009&quot; Depth of Wound (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:14629)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation3 -->

<pattern id="p-ProgressNote_3A_Observation3_classCode_4_110_14_ii_a-error_mdht" see="#p-ProgressNote_3A_Observation3_classCode_4_110_14_ii_a-error_mdht" name="p-ProgressNote_3A_Observation3_classCode_4_110_14_ii_a-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship3/observation3
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship3/observation3
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '425094009']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: PressureUlcerObservationEntryRelationship3Observation3ClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: ProgressNote - 4.110.14.ii.a classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:14689)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation3 -->

<pattern id="p-ProgressNote_3A_Observation3_moodCode_4_110_14_ii_b-error_mdht" see="#p-ProgressNote_3A_Observation3_moodCode_4_110_14_ii_b-error_mdht" name="p-ProgressNote_3A_Observation3_moodCode_4_110_14_ii_b-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship3/observation3
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship3/observation3
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '425094009']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: PressureUlcerObservationEntryRelationship3Observation3MoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.110.14.ii.b moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:14690)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Observation3 -->

<pattern id="p-ProgressNote_3A_Observation3_value_4_110_14_ii_d-error_mdht" see="#p-ProgressNote_3A_Observation3_value_4_110_14_ii_d-error_mdht" name="p-ProgressNote_3A_Observation3_value_4_110_14_ii_d-error_mdht">
		<!--
			UML path: /PressureUlcerObservation/entryRelationship3/observation3
			UML root path: /ConsultationNote/component/structuredBody/physicalExamSection/physicalExamSection/entry/pressureUlcerObservation/entryRelationship3/observation3
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '425094009']">
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | element.oclIsTypeOf(datatypes::PQ))
			Constraint name: PressureUlcerObservationEntryRelationship3Observation3Value
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(@xsi:type='PQ')])">Error: ProgressNote - 4.110.14.ii.d value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;PQ&quot; (CONF:14630)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_problemSectionEntriesOptional_2_17_6_i_j_1-error_mdht" see="#p-ProgressNote_2_Component_problemSectionEntriesOptional_2_17_6_i_j_1-error_mdht" name="p-ProgressNote_2_Component_problemSectionEntriesOptional_2_17_6_i_j_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/problemSectionEntriesOptional
			UML root path: /ProgressNote/component/structuredBody/problemSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ProblemSectionEntriesOptional))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentProblemSectionEntriesOptional
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']) &lt;= 1">Error: ProgressNote - 2.17.6.i.j.1 problemSectionEntriesOptional
		Conformance: MAY contain zero or one [0..1] section (CONF:8786)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.5 -->

<pattern id="p-ProgressNote_2_ProblemSectionEntriesOptional_text_3_91_4-error_mdht" see="#p-ProgressNote_2_ProblemSectionEntriesOptional_text_3_91_4-error_mdht" name="p-ProgressNote_2_ProblemSectionEntriesOptional_text_3_91_4-error_mdht">
		<!--
			UML path: /ProblemSectionEntriesOptional
			UML root path: /DischargeSummary/component/structuredBody/problemSectionEntriesOptional/problemSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ProblemSectionEntriesOptionalText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.91.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7880, R2.1=CONF:1198-7880)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.5 -->

<pattern id="p-ProgressNote_3A_ProblemSectionEntriesOptional_entry_3_90_5-error_mdht" see="#p-ProgressNote_3A_ProblemSectionEntriesOptional_entry_3_90_5-error_mdht" name="p-ProgressNote_3A_ProblemSectionEntriesOptional_entry_3_90_5-error_mdht">
		<!--
			UML path: /ProblemSectionEntriesOptional
			UML root path: /DischargeSummary/component/structuredBody/problemSectionEntriesOptional/problemSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::ProblemSectionEntriesOptional::ProblemConcernActEntry))
			Constraint name: ProblemSectionEntriesOptionalEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.90.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.5 -->

<pattern id="p-ProgressNote_2_ProblemSectionEntriesOptional_title_3_91_3-error_mdht" see="#p-ProgressNote_2_ProblemSectionEntriesOptional_title_3_91_3-error_mdht" name="p-ProgressNote_2_ProblemSectionEntriesOptional_title_3_91_3-error_mdht">
		<!--
			UML path: /ProblemSectionEntriesOptional
			UML root path: /DischargeSummary/component/structuredBody/problemSectionEntriesOptional/problemSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ProblemSectionEntriesOptionalTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.91.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:7879, R2.1=CONF:1198-7879)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.5 -->

<pattern id="p-ProgressNote_2_ProblemSectionEntriesOptional_templateId_3_90_1-error_mdht" see="#p-ProgressNote_2_ProblemSectionEntriesOptional_templateId_3_90_1-error_mdht" name="p-ProgressNote_2_ProblemSectionEntriesOptional_templateId_3_90_1-error_mdht">
		<!--
			UML path: /ProblemSectionEntriesOptional
			UML root path: /DischargeSummary/component/structuredBody/problemSectionEntriesOptional/problemSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.5')
			Constraint name: ProblemSectionEntriesOptionalTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5'">Error: ProgressNote - 3.90.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7877 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.5&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.5 -->

<pattern id="p-ProgressNote_2_ProblemSectionEntriesOptional_code_3_90_2-error_mdht" see="#p-ProgressNote_2_ProblemSectionEntriesOptional_code_3_90_2-error_mdht" name="p-ProgressNote_2_ProblemSectionEntriesOptional_code_3_90_2-error_mdht">
		<!--
			UML path: /ProblemSectionEntriesOptional
			UML root path: /DischargeSummary/component/structuredBody/problemSectionEntriesOptional/problemSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '11450-4' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ProblemSectionEntriesOptionalCode
		-->
	<assert test="cda:code and cda:code[@code = '11450-4' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.90.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15407)/@code=&quot;11450-4&quot; Problem List (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15408)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProblemSectionEntriesOptionalCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.90.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15407)/@code=&quot;11450-4&quot; Problem List (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15408)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemConcernActEntry -->

<pattern id="p-ProgressNote_3A_ProblemConcernActEntry_problemConcern_3_90_5_i-error_mdht" see="#p-ProgressNote_3A_ProblemConcernActEntry_problemConcern_3_90_5_i-error_mdht" name="p-ProgressNote_3A_ProblemConcernActEntry_problemConcern_3_90_5_i-error_mdht">
		<!--
			UML path: /ProblemSectionEntriesOptional/entry
			UML root path: /DischargeSummary/component/structuredBody/problemSectionEntriesOptional/problemSectionEntriesOptional/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']/cda:entry">
		<!--
			OCL: self.act->select(act : cda::Act | not act.oclIsUndefined() and act.oclIsKindOf(consol::ProblemConcernAct))->size() >= 0
			Constraint name: ProblemSectionEntriesOptionalProblemConcernActEntryProblemConcern
		-->
	<assert test="count(cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']) &gt;= 0">Error: ProgressNote - 3.90.5.i problemConcern
		Conformance: SHOULD contain zero or more [0..*] act (CONF:7882)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemConcernAct: 2.16.840.1.113883.10.20.22.4.3 -->

<pattern id="p-ProgressNote_3A_ProblemConcern_id_4_113_4-error_mdht" see="#p-ProgressNote_3A_ProblemConcern_id_4_113_4-error_mdht" name="p-ProgressNote_3A_ProblemConcern_id_4_113_4-error_mdht">
		<!--
			UML path: /ProblemConcernAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: ProblemConcernActId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.113.4 id
		Conformance: SHALL contain at least one [1..*] id (CONF:9026, R2.1=CONF:1198-9026)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemConcernAct: 2.16.840.1.113883.10.20.22.4.3 -->

<pattern id="p-ProgressNote_3A_ProblemConcern_classCode_4_113_2-error_mdht" see="#p-ProgressNote_3A_ProblemConcern_classCode_4_113_2-error_mdht" name="p-ProgressNote_3A_ProblemConcern_classCode_4_113_2-error_mdht">
		<!--
			UML path: /ProblemConcernAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">
		<!--
			OCL: self.classCode=vocab::x_ActClassDocumentEntryAct::ACT
			Constraint name: ProblemConcernActClassCode
		-->
	<assert test="@classCode = 'ACT'">Error: ProgressNote - 4.113.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;ACT&quot; Act (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:9024, R2.1=CONF:1198-9024)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemConcernAct: 2.16.840.1.113883.10.20.22.4.3 -->

<pattern id="p-ProgressNote_3A_ProblemConcern_moodCode_4_113_3-error_mdht" see="#p-ProgressNote_3A_ProblemConcern_moodCode_4_113_3-error_mdht" name="p-ProgressNote_3A_ProblemConcern_moodCode_4_113_3-error_mdht">
		<!--
			UML path: /ProblemConcernAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">
		<!--
			OCL: self.moodCode=vocab::x_DocumentActMood::EVN
			Constraint name: ProblemConcernActMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.113.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:9025, R2.1=CONF:1198-9025)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemConcernAct: 2.16.840.1.113883.10.20.22.4.3 -->

<pattern id="p-ProgressNote_3A_ProblemConcern_entryRelationship_4_112_8-error_mdht" see="#p-ProgressNote_3A_ProblemConcern_entryRelationship_4_112_8-error_mdht" name="p-ProgressNote_3A_ProblemConcern_entryRelationship_4_112_8-error_mdht">
		<!--
			UML path: /ProblemConcernAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::ProblemConcernAct::ProblemObservationEntryRelationship))
			Constraint name: ProblemConcernActEntryRelationship
		-->
	<assert test="count(cda:entryRelationship[cda:observation/cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4'])=1">Error: ProgressNote - 4.112.8 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemConcernAct: 2.16.840.1.113883.10.20.22.4.3 -->

<pattern id="p-ProgressNote_3A_ProblemConcern_code_4_112_5-error_mdht" see="#p-ProgressNote_3A_ProblemConcern_code_4_112_5-error_mdht" name="p-ProgressNote_3A_ProblemConcern_code_4_112_5-error_mdht">
		<!--
			UML path: /ProblemConcernAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProblemConcernActCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.112.5 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:9027)/@code=&quot;CONC&quot; Concern (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:9440)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = 'CONC' and value.codeSystem = '2.16.840.1.113883.5.6'
			Constraint name: ProblemConcernActCode
		-->
	<assert test="cda:code and cda:code[@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6']">Error: ProgressNote - 4.112.5 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:9027)/@code=&quot;CONC&quot; Concern (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:9440)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemConcernAct: 2.16.840.1.113883.10.20.22.4.3 -->

<pattern id="p-ProgressNote_3A_ProblemConcern_effectiveTime_4_112_7-error_mdht" see="#p-ProgressNote_3A_ProblemConcern_effectiveTime_4_112_7-error_mdht" name="p-ProgressNote_3A_ProblemConcern_effectiveTime_4_112_7-error_mdht">
		<!--
			UML path: /ProblemConcernAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: ProblemConcernActEffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: ProgressNote - 4.112.7 Concern Date
		Conformance: SHALL contain exactly one [1..1] effectiveTime (Concern Date) (CONF:9030, R2.1=CONF:1198-9030)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemConcernAct: 2.16.840.1.113883.10.20.22.4.3 -->

<pattern id="p-ProgressNote_3A_ProblemConcern_templateId_4_112_1-error_mdht" see="#p-ProgressNote_3A_ProblemConcern_templateId_4_112_1-error_mdht" name="p-ProgressNote_3A_ProblemConcern_templateId_4_112_1-error_mdht">
		<!--
			UML path: /ProblemConcernAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.3')
			Constraint name: ProblemConcernActTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3'">Error: ProgressNote - 4.112.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:16772, CONF:16773, CONF:1198-32509 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.3&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemConcernAct: 2.16.840.1.113883.10.20.22.4.3 -->

<pattern id="p-ProgressNote_3A_ProblemConcern_statusCode_4_112_6-error_mdht" see="#p-ProgressNote_3A_ProblemConcern_statusCode_4_112_6-error_mdht" name="p-ProgressNote_3A_ProblemConcern_statusCode_4_112_6-error_mdht">
		<!--
			UML path: /ProblemConcernAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">
		<!--
			OCL: true
			Constraint name: ProblemConcernActStatusCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.112.6 Concern Status
		Conformance: SHALL contain exactly one [1..1] statusCode (Concern Status), which SHALL be selected from ValueSet ProblemActStatusCode 2.16.840.1.113883.11.20.9.19 STATIC 2011-09-09 (CONF:9029)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'active' or value.code = 'suspended' or value.code = 'aborted' or value.code = 'completed'
			Constraint name: ProblemConcernActStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'active' or @code = 'suspended' or @code = 'aborted' or @code = 'completed']">Error: ProgressNote - 4.112.6 Concern Status
		Conformance: SHALL contain exactly one [1..1] statusCode (Concern Status), which SHALL be selected from ValueSet ProblemActStatusCode 2.16.840.1.113883.11.20.9.19 STATIC 2011-09-09 (CONF:9029)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservationEntryRelationship -->

<pattern id="p-ProgressNote_3A_ProblemObservationEntryRelationship_problemObservation_4_112_8_i-error_mdht" see="#p-ProgressNote_3A_ProblemObservationEntryRelationship_problemObservation_4_112_8_i-error_mdht" name="p-ProgressNote_3A_ProblemObservationEntryRelationship_problemObservation_4_112_8_i-error_mdht">
		<!--
			UML path: /ProblemConcernAct/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship">
		<!--
			OCL: self.observation->exists(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::ProblemObservation))
			Constraint name: ProblemConcernActProblemObservationEntryRelationshipProblemObservation
		-->
	<assert test="cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Error: ProgressNote - 4.112.8.i problemObservation
		Conformance: SHALL contain at least one [1..*] observation (CONF:15980)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_ProblemObservationValueNullFlavor_4_114_14-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_ProblemObservationValueNullFlavor_4_114_14-error_mdht" name="p-ProgressNote_3A_ProblemObservation_ProblemObservationValueNullFlavor_4_114_14-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.value->forAll(val | not val.isNullFlavorUndefined())
			Constraint name: ProblemObservationValueNullFlavor
		-->
	<assert test="not(cda:value[not(@nullFlavor)])">Error: ProgressNote - 4.114.14 ProblemObservationValueNullFlavor
		Conformance: value MAY contain zero or one [0..1] @nullFlavor (CONF:10141)
		Analysis: value MAY contain zero or one [0..1] @nullFlavor
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_11-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_11-error_mdht" name="p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_11-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::ProblemObservation::AgeObservationEntryRelationship))
			Constraint name: ProblemObservationEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.114.11 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_templateId_4_114_1-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_templateId_4_114_1-error_mdht" name="p-ProgressNote_3A_ProblemObservation_templateId_4_114_1-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.4')
			Constraint name: ProblemObservationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4'">Error: ProgressNote - 4.114.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:14926, CONF:14927 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.4&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_statusCode_4_114_8-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_statusCode_4_114_8-error_mdht" name="p-ProgressNote_3A_ProblemObservation_statusCode_4_114_8-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: true
			Constraint name: ProblemObservationStatusCodeP
		-->
	<assert test="true()">Error: ProgressNote - 4.114.8 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot; Completed (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:9049, R2.1=CONF:1198-9049)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed'
			Constraint name: ProblemObservationStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: ProgressNote - 4.114.8 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot; Completed (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:9049, R2.1=CONF:1198-9049)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_code_4_114_6-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_code_4_114_6-error_mdht" name="p-ProgressNote_3A_ProblemObservation_code_4_114_6-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProblemObservationCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.114.6 Problem Type
		Conformance: SHALL contain exactly one [1..1] code (Problem Type), which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2008-12-18 (CONF:9045)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and (value.code = '404684003' or value.code = '409586006' or value.code = '282291009' or value.code = '64572001' or value.code = '248536006' or value.code = '418799008' or value.code = '55607006' or value.code = '373930000')
			Constraint name: ProblemObservationCode
		-->
	<assert test="cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.96' and (@code = '404684003' or @code = '409586006' or @code = '282291009' or @code = '64572001' or @code = '248536006' or @code = '418799008' or @code = '55607006' or @code = '373930000')]">Error: ProgressNote - 4.114.6 Problem Type
		Conformance: SHALL contain exactly one [1..1] code (Problem Type), which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2008-12-18 (CONF:9045)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_effectiveTime_4_114_9-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_effectiveTime_4_114_9-error_mdht" name="p-ProgressNote_3A_ProblemObservation_effectiveTime_4_114_9-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: ((not self.effectiveTime.oclIsUndefined()) and self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())
			Constraint name: ProblemObservationEffectiveTime
		-->
	<assert test="not(cda:effectiveTime and not(cda:effectiveTime/@nullFlavor)) or cda:effectiveTime">Error: ProgressNote - 4.114.9 Problem Date
		Conformance: SHOULD contain zero or one [0..1] effectiveTime (Problem Date) (CONF:9050)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_13-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_13-error_mdht" name="p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_13-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::ProblemObservation::HealthStatusObservationEntryRelationship))
			Constraint name: ProblemObservationEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.114.13 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_moodCode_4_115_3-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_moodCode_4_115_3-error_mdht" name="p-ProgressNote_3A_ProblemObservation_moodCode_4_115_3-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: ProblemObservationMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.115.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:9042, R2.1=CONF:1198-9042)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_12-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_12-error_mdht" name="p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_12-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::ProblemObservation::ProblemStatusEntryRelationship))
			Constraint name: ProblemObservationEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: ProgressNote - 4.114.12 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_id_4_66_5-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_id_4_66_5-error_mdht" name="p-ProgressNote_3A_ProblemObservation_id_4_66_5-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: ProblemObservationId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.66.5 id
		Conformance: SHALL contain at least one [1..*] id (CONF:9043, R2.1=CONF:1198-9043)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_ProblemObservationValueTranslation_4_114_15-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_ProblemObservationValueTranslation_4_114_15-error_mdht" name="p-ProgressNote_3A_ProblemObservation_ProblemObservationValueTranslation_4_114_15-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.value.oclAsType(datatypes::CD).translation->size()>0
			Constraint name: ProblemObservationValueTranslation
		-->
	<assert test="count(cda:value/./cda:translation) &gt; 0">Error: ProgressNote - 4.114.15 ProblemObservationValueTranslation
		Conformance: value MAY contain zero or more [0..*] translation (CONF:16749, R2.1=CONF:1198-16749)
		Analysis: value MAY contain zero or more [0..*] translation
		Validation message: n/a	</assert>
		<!--
			OCL: self.value.oclAsType(datatypes::CD).translation->size()>0 implies self.value.oclAsType(datatypes::CD).translation->forAll(code->size() = 1)
			Constraint name: ProblemObservationValueTranslationCode
		-->
	<assert test="not(count(cda:value/./cda:translation) &gt; 0) or not(cda:value/./cda:translation[not(count(@code) = 1)])">Error: ProgressNote - 4.114.15 ProblemObservationValueTranslation
		Conformance: value MAY contain zero or more [0..*] translation (CONF:16749, R2.1=CONF:1198-16749)
		Analysis: translation, if present, MAY contain zero or one [0..1] @code (CodeSystem: ICD10CM 2.16.840.1.113883.6.90 STATIC)
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_text_4_114_7-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_text_4_114_7-error_mdht" name="p-ProgressNote_3A_ProblemObservation_text_4_114_7-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: ((not self.text.oclIsUndefined()) and self.text.isNullFlavorUndefined()) implies (not self.text.oclIsUndefined())
			Constraint name: ProblemObservationText
		-->
	<assert test="not(cda:text and not(cda:text/@nullFlavor)) or cda:text">Error: ProgressNote - 4.114.7 Problem Name
		Conformance: SHOULD contain zero or one [0..1] text (Problem Name) (CONF:9185)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_value_4_114_10-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_value_4_114_10-error_mdht" name="p-ProgressNote_3A_ProblemObservation_value_4_114_10-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = element.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and not value.code.oclIsUndefined())
			Constraint name: ProblemObservationValue
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(. and @xsi:type='CD' and @codeSystem = '2.16.840.1.113883.6.96' and @code)])">Error: ProgressNote - 4.114.10 Problem Code
		Conformance: SHALL contain exactly one [1..1] value (Problem Code) with @xsi:type=&quot;CD&quot;, which SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:9058)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | element.oclIsTypeOf(datatypes::CD))
			Constraint name: ProblemObservationValueP
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(@xsi:type='CD')])">Error: ProgressNote - 4.114.10 Problem Code
		Conformance: SHALL contain exactly one [1..1] value (Problem Code) with @xsi:type=&quot;CD&quot;, which SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:9058)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_classCode_4_115_2-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_classCode_4_115_2-error_mdht" name="p-ProgressNote_3A_ProblemObservation_classCode_4_115_2-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: ProblemObservationClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: ProgressNote - 4.115.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:9041, R2.1=CONF:1198-9041)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-ProgressNote_3A_ProblemObservation_negationInd_4_114_4-error_mdht" see="#p-ProgressNote_3A_ProblemObservation_negationInd_4_114_4-error_mdht" name="p-ProgressNote_3A_ProblemObservation_negationInd_4_114_4-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: (not self.negationInd.oclIsUndefined()) implies (not self.negationInd.oclIsUndefined())
			Constraint name: ProblemObservationNegationInd
		-->
	<assert test="not(@negationInd) or @negationInd">Error: ProgressNote - 4.114.4 negationInd
		Conformance: MAY contain zero or one [0..1] @negationInd (CONF:10139)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservationEntryRelationship -->

<pattern id="p-ProgressNote_3A_AgeObservationEntryRelationship_ageObservation_4_114_11_i-error_mdht" see="#p-ProgressNote_3A_AgeObservationEntryRelationship_ageObservation_4_114_11_i-error_mdht" name="p-ProgressNote_3A_AgeObservationEntryRelationship_ageObservation_4_114_11_i-error_mdht">
		<!--
			UML path: /ProblemObservation/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship">
		<!--
			OCL: self.observation->select(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::AgeObservation))->size() <= 1
			Constraint name: ProblemObservationAgeObservationEntryRelationshipAgeObservation
		-->
	<assert test="count(cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']) &lt;= 1">Error: ProgressNote - 4.114.11.i ageObservation
		Conformance: MAY contain zero or one [0..1] observation (CONF:9059, CONF:9060, CONF:15590, R2.1=CONF:1198-9059, R2.1=CONF:1198-9060, R2.1=CONF:1198-15590)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-ProgressNote_3A_AgeObservation_value_4_6_6-error_mdht" see="#p-ProgressNote_3A_AgeObservation_value_4_6_6-error_mdht" name="p-ProgressNote_3A_AgeObservation_value_4_6_6-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | element.oclIsTypeOf(datatypes::PQ))
			Constraint name: AgeObservationValue
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(@xsi:type='PQ')])">Error: ProgressNote - 4.6.6 value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;PQ&quot; (CONF:7617)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-ProgressNote_3A_AgeObservation_moodCode_4_6_3-error_mdht" see="#p-ProgressNote_3A_AgeObservation_moodCode_4_6_3-error_mdht" name="p-ProgressNote_3A_AgeObservation_moodCode_4_6_3-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: AgeObservationMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.6.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7614)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-ProgressNote_3A_AgeObservation_AgeObservationValueUnits_4_6_7-error_mdht" see="#p-ProgressNote_3A_AgeObservation_AgeObservationValueUnits_4_6_7-error_mdht" name="p-ProgressNote_3A_AgeObservation_AgeObservationValueUnits_4_6_7-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: self.value.oclAsType(datatypes::PQ).unit->size() = 1
			Constraint name: AgeObservationValueUnits
		-->
	<assert test="count(cda:value/./@unit) = 1">Error: ProgressNote - 4.6.7 AgeObservationValueUnits
		Conformance: This value SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet AgePQ_UCUM 2.16.840.1.113883.11.20.9.21 DYNAMIC (CONF:7618)
		Analysis: This value SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet AgePQ_UCUM 2.16.840.1.113883.11.20.9.21 DYNAMIC
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-ProgressNote_3A_AgeObservation_templateId_4_6_1-error_mdht" see="#p-ProgressNote_3A_AgeObservation_templateId_4_6_1-error_mdht" name="p-ProgressNote_3A_AgeObservation_templateId_4_6_1-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.31')
			Constraint name: AgeObservationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31'">Error: ProgressNote - 4.6.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7899 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.31&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-ProgressNote_3A_AgeObservation_statusCode_4_6_5-error_mdht" see="#p-ProgressNote_3A_AgeObservation_statusCode_4_6_5-error_mdht" name="p-ProgressNote_3A_AgeObservation_statusCode_4_6_5-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed'
			Constraint name: AgeObservationStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: ProgressNote - 4.6.5 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (CONF:15965)/@code=&quot;completed&quot; Completed (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:15966)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined()
			Constraint name: AgeObservationStatusCodeP
		-->
	<assert test="cda:statusCode">Error: ProgressNote - 4.6.5 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (CONF:15965)/@code=&quot;completed&quot; Completed (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:15966)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-ProgressNote_3A_AgeObservation_classCode_4_6_2-error_mdht" see="#p-ProgressNote_3A_AgeObservation_classCode_4_6_2-error_mdht" name="p-ProgressNote_3A_AgeObservation_classCode_4_6_2-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: AgeObservationClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: ProgressNote - 4.6.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7613)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-ProgressNote_3A_AgeObservation_code_4_6_4-error_mdht" see="#p-ProgressNote_3A_AgeObservation_code_4_6_4-error_mdht" name="p-ProgressNote_3A_AgeObservation_code_4_6_4-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: AgeObservationCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.6.4 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:7615)/@code=&quot;445518008&quot; Age At Onset (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:16776)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = '445518008' and value.codeSystem = '2.16.840.1.113883.6.96'
			Constraint name: AgeObservationCode
		-->
	<assert test="cda:code and cda:code[@code = '445518008' and @codeSystem = '2.16.840.1.113883.6.96']">Error: ProgressNote - 4.6.4 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:7615)/@code=&quot;445518008&quot; Age At Onset (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:16776)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_resultsSectionEntriesOptional_2_17_6_i_k_1-error_mdht" see="#p-ProgressNote_2_Component_resultsSectionEntriesOptional_2_17_6_i_k_1-error_mdht" name="p-ProgressNote_2_Component_resultsSectionEntriesOptional_2_17_6_i_k_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/resultsSectionEntriesOptional
			UML root path: /ProgressNote/component/structuredBody/resultsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ResultsSectionEntriesOptional))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentResultsSectionEntriesOptional
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']) &lt;= 1">Error: ProgressNote - 2.17.6.i.k.1 resultsSectionEntriesOptional
		Conformance: MAY contain zero or one [0..1] section (CONF:8782)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.3 -->

<pattern id="p-ProgressNote_2_ResultsSectionEntriesOptional_templateId_3_110_1-error_mdht" see="#p-ProgressNote_2_ResultsSectionEntriesOptional_templateId_3_110_1-error_mdht" name="p-ProgressNote_2_ResultsSectionEntriesOptional_templateId_3_110_1-error_mdht">
		<!--
			UML path: /ResultsSectionEntriesOptional
			UML root path: /ConsultationNote/component/structuredBody/resultsSectionEntriesOptional/resultsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.3')
			Constraint name: ResultsSectionEntriesOptionalTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3'">Error: ProgressNote - 3.110.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7116, CONF:9136 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.3&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.3 -->

<pattern id="p-ProgressNote_3A_ResultsSectionEntriesOptional_entry_3_110_5-error_mdht" see="#p-ProgressNote_3A_ResultsSectionEntriesOptional_entry_3_110_5-error_mdht" name="p-ProgressNote_3A_ResultsSectionEntriesOptional_entry_3_110_5-error_mdht">
		<!--
			UML path: /ResultsSectionEntriesOptional
			UML root path: /ConsultationNote/component/structuredBody/resultsSectionEntriesOptional/resultsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::ResultsSectionEntriesOptional::ResultOrganizerEntry))
			Constraint name: ResultsSectionEntriesOptionalEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.110.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.3 -->

<pattern id="p-ProgressNote_2_ResultsSectionEntriesOptional_title_3_111_3-error_mdht" see="#p-ProgressNote_2_ResultsSectionEntriesOptional_title_3_111_3-error_mdht" name="p-ProgressNote_2_ResultsSectionEntriesOptional_title_3_111_3-error_mdht">
		<!--
			UML path: /ResultsSectionEntriesOptional
			UML root path: /ConsultationNote/component/structuredBody/resultsSectionEntriesOptional/resultsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ResultsSectionEntriesOptionalTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.111.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8891, R2.1=CONF:1198-8891)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.3 -->

<pattern id="p-ProgressNote_2_ResultsSectionEntriesOptional_code_3_110_2-error_mdht" see="#p-ProgressNote_2_ResultsSectionEntriesOptional_code_3_110_2-error_mdht" name="p-ProgressNote_2_ResultsSectionEntriesOptional_code_3_110_2-error_mdht">
		<!--
			UML path: /ResultsSectionEntriesOptional
			UML root path: /ConsultationNote/component/structuredBody/resultsSectionEntriesOptional/resultsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '30954-2' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ResultsSectionEntriesOptionalCode
		-->
	<assert test="cda:code and cda:code[@code = '30954-2' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.110.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15431)/@code=&quot;30954-2&quot; Relevant diagnostic tests and/or laboratory data (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15432)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ResultsSectionEntriesOptionalCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.110.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15431)/@code=&quot;30954-2&quot; Relevant diagnostic tests and/or laboratory data (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15432)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.3 -->

<pattern id="p-ProgressNote_2_ResultsSectionEntriesOptional_text_3_111_4-error_mdht" see="#p-ProgressNote_2_ResultsSectionEntriesOptional_text_3_111_4-error_mdht" name="p-ProgressNote_2_ResultsSectionEntriesOptional_text_3_111_4-error_mdht">
		<!--
			UML path: /ResultsSectionEntriesOptional
			UML root path: /ConsultationNote/component/structuredBody/resultsSectionEntriesOptional/resultsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ResultsSectionEntriesOptionalText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.111.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7118, R2.1=CONF:1198-7118)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultOrganizerEntry -->

<pattern id="p-ProgressNote_3A_ResultOrganizerEntry_resultOrganizer_3_110_5_i-error_mdht" see="#p-ProgressNote_3A_ResultOrganizerEntry_resultOrganizer_3_110_5_i-error_mdht" name="p-ProgressNote_3A_ResultOrganizerEntry_resultOrganizer_3_110_5_i-error_mdht">
		<!--
			UML path: /ResultsSectionEntriesOptional/entry
			UML root path: /ConsultationNote/component/structuredBody/resultsSectionEntriesOptional/resultsSectionEntriesOptional/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']/cda:entry">
		<!--
			OCL: self.organizer->select(organizer : cda::Organizer | not organizer.oclIsUndefined() and organizer.oclIsKindOf(consol::ResultOrganizer))->size() >= 0
			Constraint name: ResultsSectionEntriesOptionalResultOrganizerEntryResultOrganizer
		-->
	<assert test="count(cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']) &gt;= 0">Error: ProgressNote - 3.110.5.i resultOrganizer
		Conformance: SHOULD contain zero or more [0..*] organizer (CONF:7119, CONF:7120)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultOrganizer: 2.16.840.1.113883.10.20.22.4.1 -->

<pattern id="p-ProgressNote_3A_ResultOrganizer_templateId_4_133_1-error_mdht" see="#p-ProgressNote_3A_ResultOrganizer_templateId_4_133_1-error_mdht" name="p-ProgressNote_3A_ResultOrganizer_templateId_4_133_1-error_mdht">
		<!--
			UML path: /ResultOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.1')
			Constraint name: ResultOrganizerTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1'">Error: ProgressNote - 4.133.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7126, CONF:9134 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.1')
			Constraint name: ResultOrganizerTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1'">Error: ProgressNote - 4.133.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7126, CONF:9134 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.1')
			Constraint name: ResultOrganizerTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1'">Error: ProgressNote - 4.133.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7126, CONF:9134 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.1')
			Constraint name: ResultOrganizerTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1'">Error: ProgressNote - 4.133.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7126, CONF:9134 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.1')
			Constraint name: ResultOrganizerTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1'">Error: ProgressNote - 4.133.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7126, CONF:9134 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.1')
			Constraint name: ResultOrganizerTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1'">Error: ProgressNote - 4.133.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7126, CONF:9134 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.1')
			Constraint name: ResultOrganizerTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1'">Error: ProgressNote - 4.133.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7126, CONF:9134 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.1')
			Constraint name: ResultOrganizerTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1'">Error: ProgressNote - 4.133.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7126, CONF:9134 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.1')
			Constraint name: ResultOrganizerTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1'">Error: ProgressNote - 4.133.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7126, CONF:9134 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.1&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultOrganizer: 2.16.840.1.113883.10.20.22.4.1 -->

<pattern id="p-ProgressNote_3A_ResultOrganizer_code_4_134_6-error_mdht" see="#p-ProgressNote_3A_ResultOrganizer_code_4_134_6-error_mdht" name="p-ProgressNote_3A_ResultOrganizer_code_4_134_6-error_mdht">
		<!--
			UML path: /ResultOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ResultOrganizerCode
		-->
	<assert test="cda:code">Error: ProgressNote - 4.134.6 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:7128, R2.1=CONF:1198-7128)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultOrganizer: 2.16.840.1.113883.10.20.22.4.1 -->

<pattern id="p-ProgressNote_3A_ResultOrganizer_id_4_134_4-error_mdht" see="#p-ProgressNote_3A_ResultOrganizer_id_4_134_4-error_mdht" name="p-ProgressNote_3A_ResultOrganizer_id_4_134_4-error_mdht">
		<!--
			UML path: /ResultOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: ResultOrganizerId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.134.4 id
		Conformance: SHALL contain at least one [1..*] id (CONF:7127, R2.1=CONF:1198-7127)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultOrganizer: 2.16.840.1.113883.10.20.22.4.1 -->

<pattern id="p-ProgressNote_3A_ResultOrganizer_ResultOrganizerClassCodeValue_4_133_8-error_mdht" see="#p-ProgressNote_3A_ResultOrganizer_ResultOrganizerClassCodeValue_4_133_8-error_mdht" name="p-ProgressNote_3A_ResultOrganizer_ResultOrganizerClassCodeValue_4_133_8-error_mdht">
		<!--
			UML path: /ResultOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">
		<!--
			OCL: self.isClassCodeDefined() and (self.classCode = vocab::x_ActClassDocumentEntryOrganizer::CLUSTER or self.classCode = vocab::x_ActClassDocumentEntryOrganizer::BATTERY)
			Constraint name: ResultOrganizerClassCodeValue
		-->
	<assert test="..isClassCodeDefined() and (@classCode = 'CLUSTER' or @classCode = 'BATTERY')">Error: ProgressNote - 4.133.8 ResultOrganizerClassCodeValue
		Conformance: SHOULD contain zero or one [0..1] @classCode=&quot;CLUSTER&quot; Cluster (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) OR SHOULD contain zero or one [0..1] @classCode=&quot;BATTERY&quot; Battery (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7165)
		Analysis: SHOULD contain zero or one [0..1] @classCode=&quot;CLUSTER&quot; Cluster (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) OR SHOULD contain zero or one [0..1] @classCode=&quot;BATTERY&quot; Battery (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass)
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultOrganizer: 2.16.840.1.113883.10.20.22.4.1 -->

<pattern id="p-ProgressNote_3A_ResultOrganizer_classCode_4_134_2-error_mdht" see="#p-ProgressNote_3A_ResultOrganizer_classCode_4_134_2-error_mdht" name="p-ProgressNote_3A_ResultOrganizer_classCode_4_134_2-error_mdht">
		<!--
			UML path: /ResultOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">
		<!--
			OCL: isDefined('classCode')
			Constraint name: ResultOrganizerClassCode
		-->
	<assert test="attribute::node()[name() = 'classCode']">Error: ProgressNote - 4.134.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode (CONF:7121, R2.1=CONF:1198-7121)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultOrganizer: 2.16.840.1.113883.10.20.22.4.1 -->

<pattern id="p-ProgressNote_3A_ResultOrganizer_moodCode_4_134_3-error_mdht" see="#p-ProgressNote_3A_ResultOrganizer_moodCode_4_134_3-error_mdht" name="p-ProgressNote_3A_ResultOrganizer_moodCode_4_134_3-error_mdht">
		<!--
			UML path: /ResultOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">
		<!--
			OCL: self.moodCode=vocab::ActMood::EVN
			Constraint name: ResultOrganizerMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.134.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7122, R2.1=CONF:1198-7122)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultOrganizer: 2.16.840.1.113883.10.20.22.4.1 -->

<pattern id="p-ProgressNote_3A_ResultOrganizer_statusCode_4_134_5-error_mdht" see="#p-ProgressNote_3A_ResultOrganizer_statusCode_4_134_5-error_mdht" name="p-ProgressNote_3A_ResultOrganizer_statusCode_4_134_5-error_mdht">
		<!--
			UML path: /ResultOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">
		<!--
			OCL: not self.statusCode.oclIsUndefined()
			Constraint name: ResultOrganizerStatusCodeP
		-->
	<assert test="cda:statusCode">Error: ProgressNote - 4.134.5 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (CONF:7123, R2.1=CONF:1198-7123), which SHALL be selected from ValueSet Result Status 2.16.840.1.113883.11.20.9.39 STATIC 2013-08-09 (CONF:14848, R2.1=CONF:1198-14848)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'aborted' or value.code = 'active' or value.code = 'cancelled' or value.code = 'completed' or value.code = 'held' or value.code = 'suspended'
			Constraint name: ResultOrganizerStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'aborted' or @code = 'active' or @code = 'cancelled' or @code = 'completed' or @code = 'held' or @code = 'suspended']">Error: ProgressNote - 4.134.5 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (CONF:7123, R2.1=CONF:1198-7123), which SHALL be selected from ValueSet Result Status 2.16.840.1.113883.11.20.9.39 STATIC 2013-08-09 (CONF:14848, R2.1=CONF:1198-14848)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservationEntryRelationship -->

<pattern id="p-ProgressNote_3A_ResultObservationEntryRelationship_resultObservation_4_133_7_i-error_mdht" see="#p-ProgressNote_3A_ResultObservationEntryRelationship_resultObservation_4_133_7_i-error_mdht" name="p-ProgressNote_3A_ResultObservationEntryRelationship_resultObservation_4_133_7_i-error_mdht">
		<!--
			UML path: /ResultOrganizer/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship[cda:observation/cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: self.observation->exists(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::ResultObservation))
			Constraint name: ResultOrganizerResultObservationEntryRelationshipResultObservation
		-->
	<assert test="cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Error: ProgressNote - 4.133.7.i resultObservation
		Conformance: SHALL contain at least one [1..*] observation (CONF:7124, CONF:14850)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_classCode_4_132_2-error_mdht" see="#p-ProgressNote_3A_Result_classCode_4_132_2-error_mdht" name="p-ProgressNote_3A_Result_classCode_4_132_2-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: ResultObservationClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: ProgressNote - 4.132.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7130, R2.1=CONF:1198-7130)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_value_4_131_9-error_mdht" see="#p-ProgressNote_3A_Result_value_4_131_9-error_mdht" name="p-ProgressNote_3A_Result_value_4_131_9-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: self.value->size() = 1
			Constraint name: ResultObservationValue
		-->
	<assert test="count(cda:value) = 1">Error: ProgressNote - 4.131.9 Result Value
		Conformance: SHALL contain exactly one [1..1] value (Result Value) (CONF:7143)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_moodCode_4_132_3-error_mdht" see="#p-ProgressNote_3A_Result_moodCode_4_132_3-error_mdht" name="p-ProgressNote_3A_Result_moodCode_4_132_3-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: ResultObservationMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.132.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7131, R2.1=CONF:1198-7131)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_code_4_131_5-error_mdht" see="#p-ProgressNote_3A_Result_code_4_131_5-error_mdht" name="p-ProgressNote_3A_Result_code_4_131_5-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ResultObservationCode
		-->
	<assert test="cda:code">Error: ProgressNote - 4.131.5 Result Type
		Conformance: SHALL contain exactly one [1..1] code (Result Type) (CONF:7133, R2.1=CONF:1198-7133)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_id_4_132_4-error_mdht" see="#p-ProgressNote_3A_Result_id_4_132_4-error_mdht" name="p-ProgressNote_3A_Result_id_4_132_4-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: ResultObservationId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.132.4 Result ID
		Conformance: SHALL contain at least one [1..*] id (Result ID) (CONF:7137, R2.1=CONF:1198-7137)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_interpretationCode_4_131_10-error_mdht" see="#p-ProgressNote_3A_Result_interpretationCode_4_131_10-error_mdht" name="p-ProgressNote_3A_Result_interpretationCode_4_131_10-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: ((not self.interpretationCode->isEmpty()) and self.interpretationCode->exists(element | element.isNullFlavorUndefined())) implies (not self.interpretationCode->isEmpty())
			Constraint name: ResultObservationInterpretationCode
		-->
	<assert test="not(cda:interpretationCode and cda:interpretationCode[not(@nullFlavor)]) or cda:interpretationCode">Error: ProgressNote - 4.131.10 Result Interpretation
		Conformance: SHOULD contain zero or more [0..*] interpretationCode (Result Interpretation) (CONF:7147)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_targetSiteCode_4_132_12-error_mdht" see="#p-ProgressNote_3A_Result_targetSiteCode_4_132_12-error_mdht" name="p-ProgressNote_3A_Result_targetSiteCode_4_132_12-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: ((not self.targetSiteCode->isEmpty()) and self.targetSiteCode->exists(element | element.isNullFlavorUndefined())) implies (self.targetSiteCode->size() <= 1 and self.targetSiteCode->forAll(element | element.oclIsTypeOf(datatypes::CE)))
			Constraint name: ResultObservationTargetSiteCode
		-->
	<assert test="not(cda:targetSiteCode and cda:targetSiteCode[not(@nullFlavor)]) or count(cda:targetSiteCode) &lt;= 1 and not(cda:targetSiteCode[not(@xsi:type='CE')])">Error: ProgressNote - 4.132.12 targetSiteCode
		Conformance: MAY contain zero or one [0..1] targetSiteCode with @xsi:type=&quot;CE&quot; (CONF:7153, R2.1=CONF:1198-7153)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_text_4_131_6-error_mdht" see="#p-ProgressNote_3A_Result_text_4_131_6-error_mdht" name="p-ProgressNote_3A_Result_text_4_131_6-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: not self.text.oclIsUndefined() implies self.text->forAll(reference->size() = 1)
			Constraint name: ResultObservationTextReference
		-->
	<assert test="not(cda:text) or not(cda:text[not(count(cda:reference) = 1)])">Error: ProgressNote - 4.131.6 text
		Conformance: SHOULD contain zero or one [0..1] text (CONF:7138)
		Analysis: text, if present, SHOULD contain zero or one [0..1] reference
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.text.oclIsUndefined()) and self.text.isNullFlavorUndefined()) implies (not self.text.oclIsUndefined())
			Constraint name: ResultObservationText
		-->
	<assert test="not(cda:text and not(cda:text/@nullFlavor)) or cda:text">Error: ProgressNote - 4.131.6 text
		Conformance: SHOULD contain zero or one [0..1] text (CONF:7138)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_methodCode_4_132_11-error_mdht" see="#p-ProgressNote_3A_Result_methodCode_4_132_11-error_mdht" name="p-ProgressNote_3A_Result_methodCode_4_132_11-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: ((not self.methodCode->isEmpty()) and self.methodCode->exists(element | element.isNullFlavorUndefined())) implies (self.methodCode->size() <= 1)
			Constraint name: ResultObservationMethodCode
		-->
	<assert test="not(cda:methodCode and cda:methodCode[not(@nullFlavor)]) or count(cda:methodCode) &lt;= 1">Error: ProgressNote - 4.132.11 methodCode
		Conformance: MAY contain zero or one [0..1] methodCode (CONF:7148, R2.1=CONF:1198-7148)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_statusCode_4_132_7-error_mdht" see="#p-ProgressNote_3A_Result_statusCode_4_132_7-error_mdht" name="p-ProgressNote_3A_Result_statusCode_4_132_7-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'aborted' or value.code = 'active' or value.code = 'cancelled' or value.code = 'completed' or value.code = 'held' or value.code = 'suspended'
			Constraint name: ResultObservationStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'aborted' or @code = 'active' or @code = 'cancelled' or @code = 'completed' or @code = 'held' or @code = 'suspended']">Error: ProgressNote - 4.132.7 Result Status
		Conformance: SHALL contain exactly one [1..1] statusCode (Result Status) (CONF:7134, R2.1=CONF:1198-7134), which SHALL be selected from ValueSet Result Status 2.16.840.1.113883.11.20.9.39 STATIC 2013-08-09 (CONF:14849, R2.1=CONF:1198-14849)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined()
			Constraint name: ResultObservationStatusCodeP
		-->
	<assert test="cda:statusCode">Error: ProgressNote - 4.132.7 Result Status
		Conformance: SHALL contain exactly one [1..1] statusCode (Result Status) (CONF:7134, R2.1=CONF:1198-7134), which SHALL be selected from ValueSet Result Status 2.16.840.1.113883.11.20.9.39 STATIC 2013-08-09 (CONF:14849, R2.1=CONF:1198-14849)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_effectiveTime_4_131_8-error_mdht" see="#p-ProgressNote_3A_Result_effectiveTime_4_131_8-error_mdht" name="p-ProgressNote_3A_Result_effectiveTime_4_131_8-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: ResultObservationEffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: ProgressNote - 4.131.8 Result Date/Time
		Conformance: SHALL contain exactly one [1..1] effectiveTime (Result Date/Time) (CONF:7140)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_templateId_4_131_1-error_mdht" see="#p-ProgressNote_3A_Result_templateId_4_131_1-error_mdht" name="p-ProgressNote_3A_Result_templateId_4_131_1-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.2')
			Constraint name: ResultObservationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2'">Error: ProgressNote - 4.131.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:9138 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.2&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_ResultObservationNoObservationRangeCode_4_131_13-error_mdht" see="#p-ProgressNote_3A_Result_ResultObservationNoObservationRangeCode_4_131_13-error_mdht" name="p-ProgressNote_3A_Result_ResultObservationNoObservationRangeCode_4_131_13-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: self.referenceRange->forAll(range : cda::ReferenceRange | range.observationRange.code.code.oclIsUndefined())
			Constraint name: ResultObservationNoObservationRangeCode
		-->
	<assert test="not(cda:referenceRange[cda:observationRange/cda:code/@code])">Error: ProgressNote - 4.131.13 ResultObservationNoObservationRangeCode
		Conformance: SHOULD contain zero or more [0..*] referenceRange. Such referenceRanges, if present, SHALL contain exactly one [1..1] observationRange. This observationRange SHALL NOT contain [0..0] code (CONF:7152)
		Analysis: SHOULD contain zero or more [0..*] referenceRange. Such referenceRanges, if present, SHALL contain exactly one [1..1] observationRange. This observationRange SHALL NOT contain [0..0] code
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ResultObservation: 2.16.840.1.113883.10.20.22.4.2 -->

<pattern id="p-ProgressNote_3A_Result_ResultObservationAuthorMultiplicity_4_131_14-error_mdht" see="#p-ProgressNote_3A_Result_ResultObservationAuthorMultiplicity_4_131_14-error_mdht" name="p-ProgressNote_3A_Result_ResultObservationAuthorMultiplicity_4_131_14-error_mdht">
		<!--
			UML path: /ResultObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/resultsSection/resultsSection/entry/resultOrganizer/entryRelationship/resultObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">
		<!--
			OCL: self.author->size()<2
			Constraint name: ResultObservationAuthorMultiplicity
		-->
	<assert test="count(cda:author) &lt; 2">Error: ProgressNote - 4.131.14 ResultObservationAuthorMultiplicity
		Conformance: MAY contain zero or one [0..1] author (CONF:7149)
		Analysis: MAY contain zero or one [0..1] author
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_reviewOfSystemsSection_2_17_6_i_l_1-error_mdht" see="#p-ProgressNote_2_Component_reviewOfSystemsSection_2_17_6_i_l_1-error_mdht" name="p-ProgressNote_2_Component_reviewOfSystemsSection_2_17_6_i_l_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/reviewOfSystemsSection
			UML root path: /ProgressNote/component/structuredBody/reviewOfSystemsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ReviewOfSystemsSection))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentReviewOfSystemsSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.3.18']) &lt;= 1">Error: ProgressNote - 2.17.6.i.l.1 reviewOfSystemsSection
		Conformance: MAY contain zero or one [0..1] section (CONF:8788)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ReviewOfSystemsSection: 1.3.6.1.4.1.19376.1.5.3.1.3.18 -->

<pattern id="p-ProgressNote_2_ReviewOfSystemsSection_templateId_3_112_1-error_mdht" see="#p-ProgressNote_2_ReviewOfSystemsSection_templateId_3_112_1-error_mdht" name="p-ProgressNote_2_ReviewOfSystemsSection_templateId_3_112_1-error_mdht">
		<!--
			UML path: /ReviewOfSystemsSection
			UML root path: /DischargeSummary/component/structuredBody/reviewOfSystemsSection/reviewOfSystemsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.3.18']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '1.3.6.1.4.1.19376.1.5.3.1.3.18')
			Constraint name: ReviewOfSystemsSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.3.18'">Error: ProgressNote - 3.112.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10469 ) such that it SHALL contain exactly one [1..1] @root=&quot;1.3.6.1.4.1.19376.1.5.3.1.3.18&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ReviewOfSystemsSection: 1.3.6.1.4.1.19376.1.5.3.1.3.18 -->

<pattern id="p-ProgressNote_2_ReviewOfSystemsSection_title_3_112_3-error_mdht" see="#p-ProgressNote_2_ReviewOfSystemsSection_title_3_112_3-error_mdht" name="p-ProgressNote_2_ReviewOfSystemsSection_title_3_112_3-error_mdht">
		<!--
			UML path: /ReviewOfSystemsSection
			UML root path: /DischargeSummary/component/structuredBody/reviewOfSystemsSection/reviewOfSystemsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.3.18']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ReviewOfSystemsSectionTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.112.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:7814)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ReviewOfSystemsSection: 1.3.6.1.4.1.19376.1.5.3.1.3.18 -->

<pattern id="p-ProgressNote_2_ReviewOfSystemsSection_text_3_112_4-error_mdht" see="#p-ProgressNote_2_ReviewOfSystemsSection_text_3_112_4-error_mdht" name="p-ProgressNote_2_ReviewOfSystemsSection_text_3_112_4-error_mdht">
		<!--
			UML path: /ReviewOfSystemsSection
			UML root path: /DischargeSummary/component/structuredBody/reviewOfSystemsSection/reviewOfSystemsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.3.18']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ReviewOfSystemsSectionText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.112.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7815)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ReviewOfSystemsSection: 1.3.6.1.4.1.19376.1.5.3.1.3.18 -->

<pattern id="p-ProgressNote_2_ReviewOfSystemsSection_code_3_112_2-error_mdht" see="#p-ProgressNote_2_ReviewOfSystemsSection_code_3_112_2-error_mdht" name="p-ProgressNote_2_ReviewOfSystemsSection_code_3_112_2-error_mdht">
		<!--
			UML path: /ReviewOfSystemsSection
			UML root path: /DischargeSummary/component/structuredBody/reviewOfSystemsSection/reviewOfSystemsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.3.18']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '10187-3' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ReviewOfSystemsSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '10187-3' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.112.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15435)/@code=&quot;10187-3&quot; REVIEW OF SYSTEMS (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15436)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ReviewOfSystemsSectionCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.112.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15435)/@code=&quot;10187-3&quot; REVIEW OF SYSTEMS (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15436)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_subjectiveSection_2_17_6_i_m_1-error_mdht" see="#p-ProgressNote_2_Component_subjectiveSection_2_17_6_i_m_1-error_mdht" name="p-ProgressNote_2_Component_subjectiveSection_2_17_6_i_m_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/subjectiveSection
			UML root path: /ProgressNote/component/structuredBody/subjectiveSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::SubjectiveSection))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentSubjectiveSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.2']) &lt;= 1">Error: ProgressNote - 2.17.6.i.m.1 subjectiveSection
		Conformance: MAY contain zero or one [0..1] section (CONF:8790)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- SubjectiveSection: 2.16.840.1.113883.10.20.21.2.2 -->

<pattern id="p-ProgressNote_2_SubjectiveSection_title_3_115_4-error_mdht" see="#p-ProgressNote_2_SubjectiveSection_title_3_115_4-error_mdht" name="p-ProgressNote_2_SubjectiveSection_title_3_115_4-error_mdht">
		<!--
			UML path: /SubjectiveSection
			UML root path: /ProgressNote/component/structuredBody/subjectiveSection/subjectiveSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.2']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: SubjectiveSectionTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.115.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:7875)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- SubjectiveSection: 2.16.840.1.113883.10.20.21.2.2 -->

<pattern id="p-ProgressNote_2_SubjectiveSection_text_3_115_3-error_mdht" see="#p-ProgressNote_2_SubjectiveSection_text_3_115_3-error_mdht" name="p-ProgressNote_2_SubjectiveSection_text_3_115_3-error_mdht">
		<!--
			UML path: /SubjectiveSection
			UML root path: /ProgressNote/component/structuredBody/subjectiveSection/subjectiveSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.2']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: SubjectiveSectionText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.115.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7876)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- SubjectiveSection: 2.16.840.1.113883.10.20.21.2.2 -->

<pattern id="p-ProgressNote_2_SubjectiveSection_code_3_115_2-error_mdht" see="#p-ProgressNote_2_SubjectiveSection_code_3_115_2-error_mdht" name="p-ProgressNote_2_SubjectiveSection_code_3_115_2-error_mdht">
		<!--
			UML path: /SubjectiveSection
			UML root path: /ProgressNote/component/structuredBody/subjectiveSection/subjectiveSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.2']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '61150-9' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: SubjectiveSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '61150-9' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.115.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15437)/@code=&quot;61150-9&quot; Subjective (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15438)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: SubjectiveSectionCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.115.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15437)/@code=&quot;61150-9&quot; Subjective (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15438)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- SubjectiveSection: 2.16.840.1.113883.10.20.21.2.2 -->

<pattern id="p-ProgressNote_2_SubjectiveSection_templateId_3_115_1-error_mdht" see="#p-ProgressNote_2_SubjectiveSection_templateId_3_115_1-error_mdht" name="p-ProgressNote_2_SubjectiveSection_templateId_3_115_1-error_mdht">
		<!--
			UML path: /SubjectiveSection
			UML root path: /ProgressNote/component/structuredBody/subjectiveSection/subjectiveSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.2']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.21.2.2')
			Constraint name: SubjectiveSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.2'">Error: ProgressNote - 3.115.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7873, CONF:10470 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.21.2.2&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_vitalSignsSectionEntriesOptional_2_17_6_i_n_1-error_mdht" see="#p-ProgressNote_2_Component_vitalSignsSectionEntriesOptional_2_17_6_i_n_1-error_mdht" name="p-ProgressNote_2_Component_vitalSignsSectionEntriesOptional_2_17_6_i_n_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/vitalSignsSectionEntriesOptional
			UML root path: /ProgressNote/component/structuredBody/vitalSignsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::VitalSignsSectionEntriesOptional))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentVitalSignsSectionEntriesOptional
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']) &lt;= 1">Error: ProgressNote - 2.17.6.i.n.1 vitalSignsSectionEntriesOptional
		Conformance: MAY contain zero or one [0..1] section (CONF:8784)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.4 -->

<pattern id="p-ProgressNote_2_VitalSignsSectionEntriesOptional_templateId_3_119_1-error_mdht" see="#p-ProgressNote_2_VitalSignsSectionEntriesOptional_templateId_3_119_1-error_mdht" name="p-ProgressNote_2_VitalSignsSectionEntriesOptional_templateId_3_119_1-error_mdht">
		<!--
			UML path: /VitalSignsSectionEntriesOptional
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.4')
			Constraint name: VitalSignsSectionEntriesOptionalTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4'">Error: ProgressNote - 3.119.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7268, CONF:10451 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.4&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.4 -->

<pattern id="p-ProgressNote_2_VitalSignsSectionEntriesOptional_title_3_120_3-error_mdht" see="#p-ProgressNote_2_VitalSignsSectionEntriesOptional_title_3_120_3-error_mdht" name="p-ProgressNote_2_VitalSignsSectionEntriesOptional_title_3_120_3-error_mdht">
		<!--
			UML path: /VitalSignsSectionEntriesOptional
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: VitalSignsSectionEntriesOptionalTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.120.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:9966, R2.1=CONF:1198-9966)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.4 -->

<pattern id="p-ProgressNote_3A_VitalSignsSectionEntriesOptional_entry_3_119_5-error_mdht" see="#p-ProgressNote_3A_VitalSignsSectionEntriesOptional_entry_3_119_5-error_mdht" name="p-ProgressNote_3A_VitalSignsSectionEntriesOptional_entry_3_119_5-error_mdht">
		<!--
			UML path: /VitalSignsSectionEntriesOptional
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::VitalSignsSectionEntriesOptional::VitalSignsOrganizerEntry))
			Constraint name: VitalSignsSectionEntriesOptionalEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.119.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.4 -->

<pattern id="p-ProgressNote_2_VitalSignsSectionEntriesOptional_text_3_120_4-error_mdht" see="#p-ProgressNote_2_VitalSignsSectionEntriesOptional_text_3_120_4-error_mdht" name="p-ProgressNote_2_VitalSignsSectionEntriesOptional_text_3_120_4-error_mdht">
		<!--
			UML path: /VitalSignsSectionEntriesOptional
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: VitalSignsSectionEntriesOptionalText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.120.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7270, R2.1=CONF:1198-7270)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsSectionEntriesOptional: 2.16.840.1.113883.10.20.22.2.4 -->

<pattern id="p-ProgressNote_2_VitalSignsSectionEntriesOptional_code_3_119_2-error_mdht" see="#p-ProgressNote_2_VitalSignsSectionEntriesOptional_code_3_119_2-error_mdht" name="p-ProgressNote_2_VitalSignsSectionEntriesOptional_code_3_119_2-error_mdht">
		<!--
			UML path: /VitalSignsSectionEntriesOptional
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '8716-3' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: VitalSignsSectionEntriesOptionalCode
		-->
	<assert test="cda:code and cda:code[@code = '8716-3' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.119.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15242)/@code=&quot;8716-3&quot; Vital Signs (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15243)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: VitalSignsSectionEntriesOptionalCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.119.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15242)/@code=&quot;8716-3&quot; Vital Signs (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15243)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsOrganizerEntry -->

<pattern id="p-ProgressNote_3A_VitalSignsOrganizerEntry_vitalSignsOrganizer_3_119_5_i-error_mdht" see="#p-ProgressNote_3A_VitalSignsOrganizerEntry_vitalSignsOrganizer_3_119_5_i-error_mdht" name="p-ProgressNote_3A_VitalSignsOrganizerEntry_vitalSignsOrganizer_3_119_5_i-error_mdht">
		<!--
			UML path: /VitalSignsSectionEntriesOptional/entry
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry">
		<!--
			OCL: self.organizer->select(organizer : cda::Organizer | not organizer.oclIsUndefined() and organizer.oclIsKindOf(consol::VitalSignsOrganizer))->size() >= 0
			Constraint name: VitalSignsSectionEntriesOptionalVitalSignsOrganizerEntryVitalSignsOrganizer
		-->
	<assert test="count(cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']) &gt;= 0">Error: ProgressNote - 3.119.5.i vitalSignsOrganizer
		Conformance: SHOULD contain zero or more [0..*] organizer (CONF:7271, CONF:7272)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsOrganizer: 2.16.840.1.113883.10.20.22.4.26 -->

<pattern id="p-ProgressNote_3A_VitalSignsOrganizer_classCode_4_156_2-error_mdht" see="#p-ProgressNote_3A_VitalSignsOrganizer_classCode_4_156_2-error_mdht" name="p-ProgressNote_3A_VitalSignsOrganizer_classCode_4_156_2-error_mdht">
		<!--
			UML path: /VitalSignsOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">
		<!--
			OCL: self.classCode=vocab::x_ActClassDocumentEntryOrganizer::CLUSTER
			Constraint name: VitalSignsOrganizerClassCode
		-->
	<assert test="@classCode = 'CLUSTER'">Error: ProgressNote - 4.156.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;CLUSTER&quot;  (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7279, R2.1=CONF:1198-7279)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsOrganizer: 2.16.840.1.113883.10.20.22.4.26 -->

<pattern id="p-ProgressNote_3A_VitalSignsOrganizer_moodCode_4_156_3-error_mdht" see="#p-ProgressNote_3A_VitalSignsOrganizer_moodCode_4_156_3-error_mdht" name="p-ProgressNote_3A_VitalSignsOrganizer_moodCode_4_156_3-error_mdht">
		<!--
			UML path: /VitalSignsOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">
		<!--
			OCL: self.moodCode=vocab::ActMood::EVN
			Constraint name: VitalSignsOrganizerMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.156.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7280, R2.1=CONF:1198-7280)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsOrganizer: 2.16.840.1.113883.10.20.22.4.26 -->

<pattern id="p-ProgressNote_3A_VitalSignsOrganizer_code_4_155_5-error_mdht" see="#p-ProgressNote_3A_VitalSignsOrganizer_code_4_155_5-error_mdht" name="p-ProgressNote_3A_VitalSignsOrganizer_code_4_155_5-error_mdht">
		<!--
			UML path: /VitalSignsOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = '46680005' and value.codeSystem = '2.16.840.1.113883.6.96'
			Constraint name: VitalSignsOrganizerCode
		-->
	<assert test="cda:code and cda:code[@code = '46680005' and @codeSystem = '2.16.840.1.113883.6.96']">Error: ProgressNote - 4.155.5 code
		Conformance: SHALL contain exactly one [1..1] code/@code=&quot;46680005&quot; Vital signs (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:7283)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: VitalSignsOrganizerCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.155.5 code
		Conformance: SHALL contain exactly one [1..1] code/@code=&quot;46680005&quot; Vital signs (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:7283)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsOrganizer: 2.16.840.1.113883.10.20.22.4.26 -->

<pattern id="p-ProgressNote_3A_VitalSignsOrganizer_effectiveTime_4_155_7-error_mdht" see="#p-ProgressNote_3A_VitalSignsOrganizer_effectiveTime_4_155_7-error_mdht" name="p-ProgressNote_3A_VitalSignsOrganizer_effectiveTime_4_155_7-error_mdht">
		<!--
			UML path: /VitalSignsOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: VitalSignsOrganizerEffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: ProgressNote - 4.155.7 effectiveTime
		Conformance: SHALL contain exactly one [1..1] effectiveTime (CONF:7288)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsOrganizer: 2.16.840.1.113883.10.20.22.4.26 -->

<pattern id="p-ProgressNote_3A_VitalSignsOrganizer_statusCode_4_156_6-error_mdht" see="#p-ProgressNote_3A_VitalSignsOrganizer_statusCode_4_156_6-error_mdht" name="p-ProgressNote_3A_VitalSignsOrganizer_statusCode_4_156_6-error_mdht">
		<!--
			UML path: /VitalSignsOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">
		<!--
			OCL: not self.statusCode.oclIsUndefined()
			Constraint name: VitalSignsOrganizerStatusCodeP
		-->
	<assert test="cda:statusCode">Error: ProgressNote - 4.156.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (R2.1=CONF:1198-7284)/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7284, R2.1=CONF:1198-19120)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed'
			Constraint name: VitalSignsOrganizerStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: ProgressNote - 4.156.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (R2.1=CONF:1198-7284)/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7284, R2.1=CONF:1198-19120)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsOrganizer: 2.16.840.1.113883.10.20.22.4.26 -->

<pattern id="p-ProgressNote_3A_VitalSignsOrganizer_id_4_156_4-error_mdht" see="#p-ProgressNote_3A_VitalSignsOrganizer_id_4_156_4-error_mdht" name="p-ProgressNote_3A_VitalSignsOrganizer_id_4_156_4-error_mdht">
		<!--
			UML path: /VitalSignsOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: VitalSignsOrganizerId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.156.4 id
		Conformance: SHALL contain at least one [1..*] id (CONF:7282, R2.1=CONF:1198-7282)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignsOrganizer: 2.16.840.1.113883.10.20.22.4.26 -->

<pattern id="p-ProgressNote_3A_VitalSignsOrganizer_templateId_4_155_1-error_mdht" see="#p-ProgressNote_3A_VitalSignsOrganizer_templateId_4_155_1-error_mdht" name="p-ProgressNote_3A_VitalSignsOrganizer_templateId_4_155_1-error_mdht">
		<!--
			UML path: /VitalSignsOrganizer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.26')
			Constraint name: VitalSignsOrganizerTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26'">Error: ProgressNote - 4.155.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7281, CONF:10528 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.26&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservationEntryRelationship -->

<pattern id="p-ProgressNote_3A_VitalSignObservationEntryRelationship_vitalSignObservation_4_155_8_i-error_mdht" see="#p-ProgressNote_3A_VitalSignObservationEntryRelationship_vitalSignObservation_4_155_8_i-error_mdht" name="p-ProgressNote_3A_VitalSignObservationEntryRelationship_vitalSignObservation_4_155_8_i-error_mdht">
		<!--
			UML path: /VitalSignsOrganizer/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship[cda:observation/cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: self.observation->exists(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::VitalSignObservation))
			Constraint name: VitalSignsOrganizerVitalSignObservationEntryRelationshipVitalSignObservation
		-->
	<assert test="cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Error: ProgressNote - 4.155.8.i vitalSignObservation
		Conformance: SHALL contain at least one [1..*] observation (CONF:7285, CONF:15946)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_author_4_153_13-error_mdht" see="#p-ProgressNote_3A_VitalSign_author_4_153_13-error_mdht" name="p-ProgressNote_3A_VitalSign_author_4_153_13-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: self.author->select(author : cda::Author | not author.oclIsUndefined() and author.oclIsKindOf(cda::Author))->size() <= 1
			Constraint name: VitalSignObservationAuthor
		-->
	<assert test="count(cda:author) &lt;= 1">Error: ProgressNote - 4.153.13 author
		Conformance: MAY contain  [0..1] author such that it  (CONF:7310)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_classCode_4_154_2-error_mdht" see="#p-ProgressNote_3A_VitalSign_classCode_4_154_2-error_mdht" name="p-ProgressNote_3A_VitalSign_classCode_4_154_2-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: VitalSignObservationClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: ProgressNote - 4.154.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7297, R2.0=CONF:1098-7297)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_text_4_153_12-error_mdht" see="#p-ProgressNote_3A_VitalSign_text_4_153_12-error_mdht" name="p-ProgressNote_3A_VitalSign_text_4_153_12-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: ((not self.text.oclIsUndefined()) and self.text.isNullFlavorUndefined()) implies (not self.text.oclIsUndefined())
			Constraint name: VitalSignObservationText
		-->
	<assert test="not(cda:text and not(cda:text/@nullFlavor)) or cda:text">Error: ProgressNote - 4.153.12 text
		Conformance: SHOULD contain zero or one [0..1] text (CONF:7302)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_statusCode_4_154_6-error_mdht" see="#p-ProgressNote_3A_VitalSign_statusCode_4_154_6-error_mdht" name="p-ProgressNote_3A_VitalSign_statusCode_4_154_6-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed'
			Constraint name: VitalSignObservationStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: ProgressNote - 4.154.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (R2.0=CONF:1098-7303)/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7303, R2.0=CONF:1098-19119)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined()
			Constraint name: VitalSignObservationStatusCodeP
		-->
	<assert test="cda:statusCode">Error: ProgressNote - 4.154.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (R2.0=CONF:1098-7303)/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7303, R2.0=CONF:1098-19119)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_interpretationCode_4_153_9-error_mdht" see="#p-ProgressNote_3A_VitalSign_interpretationCode_4_153_9-error_mdht" name="p-ProgressNote_3A_VitalSign_interpretationCode_4_153_9-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: ((not self.interpretationCode->isEmpty()) and self.interpretationCode->exists(element | element.isNullFlavorUndefined())) implies (self.interpretationCode->size() <= 1)
			Constraint name: VitalSignObservationInterpretationCode
		-->
	<assert test="not(cda:interpretationCode and cda:interpretationCode[not(@nullFlavor)]) or count(cda:interpretationCode) &lt;= 1">Error: ProgressNote - 4.153.9 Vital Sign Interpretation
		Conformance: MAY contain zero or one [0..1] interpretationCode (Vital Sign Interpretation) (CONF:7307)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_moodCode_4_154_3-error_mdht" see="#p-ProgressNote_3A_VitalSign_moodCode_4_154_3-error_mdht" name="p-ProgressNote_3A_VitalSign_moodCode_4_154_3-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: VitalSignObservationMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: ProgressNote - 4.154.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7298, R2.0=CONF:1098-7298)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_value_4_153_8-error_mdht" see="#p-ProgressNote_3A_VitalSign_value_4_153_8-error_mdht" name="p-ProgressNote_3A_VitalSign_value_4_153_8-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | element.oclIsTypeOf(datatypes::PQ))
			Constraint name: VitalSignObservationValue
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(@xsi:type='PQ')])">Error: ProgressNote - 4.153.8 Vital Sign Value
		Conformance: SHALL contain exactly one [1..1] value (Vital Sign Value) with @xsi:type=&quot;PQ&quot; (CONF:7305)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_VitalSignObservationTextReference_4_153_14-error_mdht" see="#p-ProgressNote_3A_VitalSign_VitalSignObservationTextReference_4_153_14-error_mdht" name="p-ProgressNote_3A_VitalSign_VitalSignObservationTextReference_4_153_14-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: not self.text.oclIsUndefined() implies self.text->forAll(reference->size() = 1)
			Constraint name: VitalSignObservationTextReference
		-->
	<assert test="not(cda:text) or not(cda:text[not(count(cda:reference) = 1)])">Error: ProgressNote - 4.153.14 VitalSignObservationTextReference
		Conformance: text, if present, SHOULD contain zero or one [0..1] reference (CONF:15943)
		Analysis: text, if present, SHOULD contain zero or one [0..1] reference
		Validation message: n/a	</assert>
		<!--
			OCL: self.text->forAll(reference->size() = 1) implies self.text->forAll(reference->one(value->size() = 1))
			Constraint name: VitalSignObservationReferenceValue
		-->
	<assert test="cda:text[not(count(cda:reference) = 1)] or not(cda:text[not(count(cda:reference[count(@value) = 1])=1)])">Error: ProgressNote - 4.153.14 VitalSignObservationTextReference
		Conformance: text, if present, SHOULD contain zero or one [0..1] reference (CONF:15943)
		Analysis: reference, if present, SHOULD contain zero or one [0..1] @value
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_templateId_4_153_1-error_mdht" see="#p-ProgressNote_3A_VitalSign_templateId_4_153_1-error_mdht" name="p-ProgressNote_3A_VitalSign_templateId_4_153_1-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.27')
			Constraint name: VitalSignObservationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27'">Error: ProgressNote - 4.153.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( (CONF:7299, CONF:10527 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.27&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_code_4_154_5-error_mdht" see="#p-ProgressNote_3A_VitalSign_code_4_154_5-error_mdht" name="p-ProgressNote_3A_VitalSign_code_4_154_5-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: VitalSignObservationCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 4.154.5 Vital Sign Type
		Conformance: SHALL contain exactly one [1..1] code (Vital Sign Type), which SHOULD be selected from ValueSet HITSP Vital Sign Result Type 2.16.840.1.113883.3.88.12.80.62 DYNAMIC (CONF:7301, R2.0=CONF:1098-7301)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.1' and (value.code = '9279-1' or value.code = '8867-4' or value.code = '2710-2' or value.code = '8480-6' or value.code = '8462-4' or value.code = '8310-5' or value.code = '8302-2' or value.code = '8306-3' or value.code = '8287-5' or value.code = '3141-9' or value.code = '39156-5' or value.code = '3140-1')
			Constraint name: VitalSignObservationCode
		-->
	<assert test="cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.1' and (@code = '9279-1' or @code = '8867-4' or @code = '2710-2' or @code = '8480-6' or @code = '8462-4' or @code = '8310-5' or @code = '8302-2' or @code = '8306-3' or @code = '8287-5' or @code = '3141-9' or @code = '39156-5' or @code = '3140-1')]">Error: ProgressNote - 4.154.5 Vital Sign Type
		Conformance: SHALL contain exactly one [1..1] code (Vital Sign Type), which SHOULD be selected from ValueSet HITSP Vital Sign Result Type 2.16.840.1.113883.3.88.12.80.62 DYNAMIC (CONF:7301, R2.0=CONF:1098-7301)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_targetSiteCode_4_154_11-error_mdht" see="#p-ProgressNote_3A_VitalSign_targetSiteCode_4_154_11-error_mdht" name="p-ProgressNote_3A_VitalSign_targetSiteCode_4_154_11-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: ((not self.targetSiteCode->isEmpty()) and self.targetSiteCode->exists(element | element.isNullFlavorUndefined())) implies (self.targetSiteCode->size() <= 1)
			Constraint name: VitalSignObservationTargetSiteCode
		-->
	<assert test="not(cda:targetSiteCode and cda:targetSiteCode[not(@nullFlavor)]) or count(cda:targetSiteCode) &lt;= 1">Error: ProgressNote - 4.154.11 targetSiteCode
		Conformance: MAY contain zero or one [0..1] targetSiteCode (CONF:7309, R2.0=CONF:1098-7309)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_effectiveTime_4_153_7-error_mdht" see="#p-ProgressNote_3A_VitalSign_effectiveTime_4_153_7-error_mdht" name="p-ProgressNote_3A_VitalSign_effectiveTime_4_153_7-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: VitalSignObservationEffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: ProgressNote - 4.153.7 Vital Sign Date/Time
		Conformance: SHALL contain exactly one [1..1] effectiveTime (Vital Sign Date/Time) (CONF:7304)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_id_4_154_4-error_mdht" see="#p-ProgressNote_3A_VitalSign_id_4_154_4-error_mdht" name="p-ProgressNote_3A_VitalSign_id_4_154_4-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: VitalSignObservationId
		-->
	<assert test="cda:id">Error: ProgressNote - 4.154.4 Vital Sign ID
		Conformance: SHALL contain at least one [1..*] id (Vital Sign ID) (CONF:7300, R2.0=CONF:1098-7300)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- VitalSignObservation: 2.16.840.1.113883.10.20.22.4.27 -->

<pattern id="p-ProgressNote_3A_VitalSign_methodCode_4_154_10-error_mdht" see="#p-ProgressNote_3A_VitalSign_methodCode_4_154_10-error_mdht" name="p-ProgressNote_3A_VitalSign_methodCode_4_154_10-error_mdht">
		<!--
			UML path: /VitalSignObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/vitalSignsSectionEntriesOptional/vitalSignsSectionEntriesOptional/entry/vitalSignsOrganizer/entryRelationship/vitalSignObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">
		<!--
			OCL: ((not self.methodCode->isEmpty()) and self.methodCode->exists(element | element.isNullFlavorUndefined())) implies (self.methodCode->size() <= 1)
			Constraint name: VitalSignObservationMethodCode
		-->
	<assert test="not(cda:methodCode and cda:methodCode[not(@nullFlavor)]) or count(cda:methodCode) &lt;= 1">Error: ProgressNote - 4.154.10 methodCode
		Conformance: MAY contain zero or one [0..1] methodCode (CONF:7308, R2.0=CONF:1098-7308)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-ProgressNote_2_Component_instructionsSection_2_17_6_i_o_1-error_mdht" see="#p-ProgressNote_2_Component_instructionsSection_2_17_6_i_o_1-error_mdht" name="p-ProgressNote_2_Component_instructionsSection_2_17_6_i_o_1-error_mdht">
		<!--
			UML path: /ProgressNote/component/structuredBody/instructionsSection
			UML root path: /ProgressNote/component/structuredBody/instructionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::InstructionsSection))->size() <= 1
			Constraint name: ProgressNoteComponentStructuredBodyComponentInstructionsSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']) &lt;= 1">Error: ProgressNote - 2.17.6.i.o.1 instructionsSection
		Conformance: MAY contain zero or one [0..1] section (CONF:16806)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InstructionsSection: 2.16.840.1.113883.10.20.22.2.45 -->

<pattern id="p-ProgressNote_3A_InstructionsSection_entry_3_56_5-error_mdht" see="#p-ProgressNote_3A_InstructionsSection_entry_3_56_5-error_mdht" name="p-ProgressNote_3A_InstructionsSection_entry_3_56_5-error_mdht">
		<!--
			UML path: /InstructionsSection
			UML root path: /HistoryAndPhysicalNote/component/structuredBody/instructionsSection/instructionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::InstructionsSection::InstructionsEntry))
			Constraint name: InstructionsSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: ProgressNote - 3.56.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InstructionsSection: 2.16.840.1.113883.10.20.22.2.45 -->

<pattern id="p-ProgressNote_2_InstructionsSection_templateId_3_56_1-error_mdht" see="#p-ProgressNote_2_InstructionsSection_templateId_3_56_1-error_mdht" name="p-ProgressNote_2_InstructionsSection_templateId_3_56_1-error_mdht">
		<!--
			UML path: /InstructionsSection
			UML root path: /HistoryAndPhysicalNote/component/structuredBody/instructionsSection/instructionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.45')
			Constraint name: InstructionsSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45'">Error: ProgressNote - 3.56.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10112, CONF:10402 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.45&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InstructionsSection: 2.16.840.1.113883.10.20.22.2.45 -->

<pattern id="p-ProgressNote_2_InstructionsSection_text_3_57_4-error_mdht" see="#p-ProgressNote_2_InstructionsSection_text_3_57_4-error_mdht" name="p-ProgressNote_2_InstructionsSection_text_3_57_4-error_mdht">
		<!--
			UML path: /InstructionsSection
			UML root path: /HistoryAndPhysicalNote/component/structuredBody/instructionsSection/instructionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: InstructionsSectionText
		-->
	<assert test="cda:text">Error: ProgressNote - 3.57.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:10115, R2.0=CONF:1098-10115)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InstructionsSection: 2.16.840.1.113883.10.20.22.2.45 -->

<pattern id="p-ProgressNote_2_InstructionsSection_code_3_56_2-error_mdht" see="#p-ProgressNote_2_InstructionsSection_code_3_56_2-error_mdht" name="p-ProgressNote_2_InstructionsSection_code_3_56_2-error_mdht">
		<!--
			UML path: /InstructionsSection
			UML root path: /HistoryAndPhysicalNote/component/structuredBody/instructionsSection/instructionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '69730-0' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: InstructionsSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '69730-0' and @codeSystem = '2.16.840.1.113883.6.1']">Error: ProgressNote - 3.56.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15375)/@code=&quot;69730-0&quot; Instructions (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15376)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: InstructionsSectionCodeP
		-->
	<assert test="cda:code">Error: ProgressNote - 3.56.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15375)/@code=&quot;69730-0&quot; Instructions (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15376)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InstructionsSection: 2.16.840.1.113883.10.20.22.2.45 -->

<pattern id="p-ProgressNote_2_InstructionsSection_title_3_57_3-error_mdht" see="#p-ProgressNote_2_InstructionsSection_title_3_57_3-error_mdht" name="p-ProgressNote_2_InstructionsSection_title_3_57_3-error_mdht">
		<!--
			UML path: /InstructionsSection
			UML root path: /HistoryAndPhysicalNote/component/structuredBody/instructionsSection/instructionsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: InstructionsSectionTitle
		-->
	<assert test="cda:title">Error: ProgressNote - 3.57.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:10114, R2.0=CONF:1098-10114)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InstructionsEntry -->

<pattern id="p-ProgressNote_3A_InstructionsEntry_instructions_3_56_5_i-error_mdht" see="#p-ProgressNote_3A_InstructionsEntry_instructions_3_56_5_i-error_mdht" name="p-ProgressNote_3A_InstructionsEntry_instructions_3_56_5_i-error_mdht">
		<!--
			UML path: /InstructionsSection/entry
			UML root path: /HistoryAndPhysicalNote/component/structuredBody/instructionsSection/instructionsSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']/cda:entry">
		<!--
			OCL: self.act->select(act : cda::Act | not act.oclIsUndefined() and act.oclIsKindOf(consol::Instructions))->size() >= 0
			Constraint name: InstructionsSectionInstructionsEntryInstructions
		-->
	<assert test="count(cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']) &gt;= 0">Error: ProgressNote - 3.56.5.i instructions
		Conformance: SHOULD contain zero or more [0..*] act (CONF:10116, CONF:10117)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Author -->

<pattern id="p-ProgressNote_1A_Author_assignedAuthor_2_17_14_ii-error_mdht" see="#p-ProgressNote_1A_Author_assignedAuthor_2_17_14_ii-error_mdht" name="p-ProgressNote_1A_Author_assignedAuthor_2_17_14_ii-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/author
			UML root path: /GeneralHeaderConstraints/author
		-->
	<rule context="/cda:ClinicalDocument/cda:author">
		<!--
			OCL: self.assignedAuthor->one(assignedAuthor : cda::AssignedAuthor | not assignedAuthor.oclIsUndefined() and assignedAuthor.oclIsKindOf(consol::GeneralHeaderConstraints::Author::AssignedAuthor))
			Constraint name: GeneralHeaderConstraintsAuthorAssignedAuthor
		-->
	<assert test="count(cda:assignedAuthor)=1">Error: ProgressNote - 2.17.14.ii assignedAuthor
		Conformance: SHALL contain exactly one [1..1] assignedAuthor (CONF:5448)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssignedAuthor -->

<pattern id="p-ProgressNote_1A_AssignedAuthor_code_2_17_14_ii_b-error_mdht" see="#p-ProgressNote_1A_AssignedAuthor_code_2_17_14_ii_b-error_mdht" name="p-ProgressNote_1A_AssignedAuthor_code_2_17_14_ii_b-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/author/assignedAuthor
			UML root path: /GeneralHeaderConstraints/author/assignedAuthor
		-->
	<rule context="/cda:ClinicalDocument/cda:author/cda:assignedAuthor">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsAuthorAssignedAuthorCodeP
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: ProgressNote - 2.17.14.ii.b code
		Conformance: SHOULD contain zero or one [0..1] code (CONF:16787), which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:16788)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.101' and not value.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsAuthorAssignedAuthorCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.101' and @code]">Error: ProgressNote - 2.17.14.ii.b code
		Conformance: SHOULD contain zero or one [0..1] code (CONF:16787), which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:16788)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-ProgressNote_1A_USRealmAddress_postalCode_4_4_6_iii_b_5-error_mdht" see="#p-ProgressNote_1A_USRealmAddress_postalCode_4_4_6_iii_b_5-error_mdht" name="p-ProgressNote_1A_USRealmAddress_postalCode_4_4_6_iii_b_5-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.postalCode->isEmpty()) and self.postalCode->exists(element | element.isNullFlavorUndefined())) implies (self.postalCode->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressPostalCode
		-->
	<assert test="@nullFlavor or not(cda:postalCode and cda:postalCode[not(@nullFlavor)]) or count(cda:postalCode) &lt;= 1">Error: ProgressNote - 4.4.6.iii.b.5 postalCode
		Conformance: SHOULD contain zero or one [0..1] postalCode (CONF:7294, R2.1=CONF:81-7294)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-ProgressNote_1A_USRealmAddress_state_4_4_6_iii_b_3-error_mdht" see="#p-ProgressNote_1A_USRealmAddress_state_4_4_6_iii_b_3-error_mdht" name="p-ProgressNote_1A_USRealmAddress_state_4_4_6_iii_b_3-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.state->isEmpty()) and self.state->exists(element | element.isNullFlavorUndefined())) implies (self.state->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressState
		-->
	<assert test="@nullFlavor or not(cda:state and cda:state[not(@nullFlavor)]) or count(cda:state) &lt;= 1">Error: ProgressNote - 4.4.6.iii.b.3 state
		Conformance: SHOULD contain zero or one [0..1] state (CONF:7293, R2.1=CONF:81-7293)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-ProgressNote_1A_USRealmAddress_city_4_4_6_iii_b_4-error_mdht" see="#p-ProgressNote_1A_USRealmAddress_city_4_4_6_iii_b_4-error_mdht" name="p-ProgressNote_1A_USRealmAddress_city_4_4_6_iii_b_4-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (self.city->size() = 1 ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressCity
		-->
	<assert test="@nullFlavor or count(cda:city) = 1">Error: ProgressNote - 4.4.6.iii.b.4 city
		Conformance: SHALL contain exactly one [1..1] city (CONF:7292, R2.1=CONF:81-7292)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-ProgressNote_1A_USRealmAddress_streetAddressLine_4_4_6_iii_b_6-error_mdht" see="#p-ProgressNote_1A_USRealmAddress_streetAddressLine_4_4_6_iii_b_6-error_mdht" name="p-ProgressNote_1A_USRealmAddress_streetAddressLine_4_4_6_iii_b_6-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (not self.streetAddressLine->isEmpty() ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressStreetAddressLine
		-->
	<assert test="@nullFlavor or cda:streetAddressLine">Error: ProgressNote - 4.4.6.iii.b.6 streetAddressLine
		Conformance: SHALL contain at least one [1..*] streetAddressLine (CONF:7291, R2.1=CONF:81-7291)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-ProgressNote_1A_USRealmAddress_use_4_4_6_iii_b_1-error_mdht" see="#p-ProgressNote_1A_USRealmAddress_use_4_4_6_iii_b_1-error_mdht" name="p-ProgressNote_1A_USRealmAddress_use_4_4_6_iii_b_1-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies ((not self.use->isEmpty()) implies (self.use->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(vocab::PostalAddressUse) and 
let value : vocab::PostalAddressUse = element.oclAsType(vocab::PostalAddressUse) in 
value = vocab::PostalAddressUse::BAD or value = vocab::PostalAddressUse::DIR or value = vocab::PostalAddressUse::H or value = vocab::PostalAddressUse::HP or value = vocab::PostalAddressUse::HV or value = vocab::PostalAddressUse::PHYS or value = vocab::PostalAddressUse::PST or value = vocab::PostalAddressUse::PUB or value = vocab::PostalAddressUse::TMP or value = vocab::PostalAddressUse::WP)) ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressUse
		-->
	<assert test="@nullFlavor or not(@use) or not(@use[not(. and . = 'BAD' or . = 'DIR' or . = 'H' or . = 'HP' or . = 'HV' or . = 'PHYS' or . = 'PST' or . = 'PUB' or . = 'TMP' or . = 'WP')])">Error: ProgressNote - 4.4.6.iii.b.1 use
		Conformance: SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet PostalAddressUse 2.16.840.1.113883.1.11.10637 STATIC (CONF:7290, R2.1=CONF:81-7290)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies ((not self.use->isEmpty()) implies (self.use->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressUseP
		-->
	<assert test="@nullFlavor or not(@use) or count(@use) &lt;= 1">Error: ProgressNote - 4.4.6.iii.b.1 use
		Conformance: SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet PostalAddressUse 2.16.840.1.113883.1.11.10637 STATIC (CONF:7290, R2.1=CONF:81-7290)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-ProgressNote_1A_USRealmAddress_country_4_4_6_iii_b_2-error_mdht" see="#p-ProgressNote_1A_USRealmAddress_country_4_4_6_iii_b_2-error_mdht" name="p-ProgressNote_1A_USRealmAddress_country_4_4_6_iii_b_2-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.country->isEmpty()) and self.country->exists(element | element.isNullFlavorUndefined())) implies (self.country->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressCountry
		-->
	<assert test="@nullFlavor or not(cda:country and cda:country[not(@nullFlavor)]) or count(cda:country) &lt;= 1">Error: ProgressNote - 4.4.6.iii.b.2 country
		Conformance: SHOULD contain zero or one [0..1] country (CONF:7295, R2.1=CONF:81-7295)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- DataEnterer -->

<pattern id="p-ProgressNote_1A_DataEnterer_assignedEntity_2_17_15_i-error_mdht" see="#p-ProgressNote_1A_DataEnterer_assignedEntity_2_17_15_i-error_mdht" name="p-ProgressNote_1A_DataEnterer_assignedEntity_2_17_15_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/dataEnterer
			UML root path: /GeneralHeaderConstraints/dataEnterer
		-->
	<rule context="/cda:ClinicalDocument/cda:dataEnterer">
		<!--
			OCL: self.assignedEntity->one(assignedEntity : cda::AssignedEntity | not assignedEntity.oclIsUndefined() and assignedEntity.oclIsKindOf(consol::GeneralHeaderConstraints::DataEnterer::AssignedEntity))
			Constraint name: GeneralHeaderConstraintsDataEntererAssignedEntity
		-->
	<assert test="count(cda:assignedEntity)=1">Error: ProgressNote - 2.17.15.i assignedEntity
		Conformance: SHALL contain exactly one [1..1] assignedEntity (CONF:5442)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssignedEntity -->

<pattern id="p-ProgressNote_1A_AssignedEntity_code_2_17_15_i_b-error_mdht" see="#p-ProgressNote_1A_AssignedEntity_code_2_17_15_i_b-error_mdht" name="p-ProgressNote_1A_AssignedEntity_code_2_17_15_i_b-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/dataEnterer/assignedEntity
			UML root path: /GeneralHeaderConstraints/dataEnterer/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:dataEnterer/cda:assignedEntity">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsDataEntererAssignedEntityCodeP
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: ProgressNote - 2.17.15.i.b code
		Conformance: MAY contain zero or one [0..1] code, which SHOULD be selected from (CodeSystem: 2.16.840.1.113883.6.101 NUCC Health Care Provider Taxonomy) (CONF:9944)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.101')
			Constraint name: GeneralHeaderConstraintsDataEntererAssignedEntityCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.101']">Error: ProgressNote - 2.17.15.i.b code
		Conformance: MAY contain zero or one [0..1] code, which SHOULD be selected from (CodeSystem: 2.16.840.1.113883.6.101 NUCC Health Care Provider Taxonomy) (CONF:9944)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InformationRecipient -->

<pattern id="p-ProgressNote_1A_InformationRecipient_intendedRecipient_2_17_17_i-error_mdht" see="#p-ProgressNote_1A_InformationRecipient_intendedRecipient_2_17_17_i-error_mdht" name="p-ProgressNote_1A_InformationRecipient_intendedRecipient_2_17_17_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informationRecipient
			UML root path: /GeneralHeaderConstraints/informationRecipient
		-->
	<rule context="/cda:ClinicalDocument/cda:informationRecipient">
		<!--
			OCL: self.intendedRecipient->one(intendedRecipient : cda::IntendedRecipient | not intendedRecipient.oclIsUndefined() and intendedRecipient.oclIsKindOf(consol::GeneralHeaderConstraints::InformationRecipient::IntendedRecipient))
			Constraint name: GeneralHeaderConstraintsInformationRecipientIntendedRecipient
		-->
	<assert test="count(cda:intendedRecipient)=1">Error: ProgressNote - 2.17.17.i intendedRecipient
		Conformance: SHALL contain exactly one [1..1] intendedRecipient (CONF:5566)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Informant -->

<pattern id="p-ProgressNote_1A_Informant_GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity_2_17_20_iii-error_mdht" see="#p-ProgressNote_1A_Informant_GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity_2_17_20_iii-error_mdht" name="p-ProgressNote_1A_Informant_GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity_2_17_20_iii-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informant
			UML root path: /GeneralHeaderConstraints/informant
		-->
	<rule context="/cda:ClinicalDocument/cda:informant">
		<!--
			OCL: self.assignedEntity.oclIsUndefined() xor self.relatedEntity.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity
		-->
	<assert test="not(cda:assignedEntity) or not(cda:relatedEntity)">Error: ProgressNote - 2.17.20.iii GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity
		Conformance: SHALL satisfy: contain exactly one [1..1] assignedEntity OR exactly one [1..1] relatedEntity (CONF:8002)
		Analysis: contain exactly one [1..1] assignedEntity OR exactly one [1..1] relatedEntity
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssignedEntity -->

<pattern id="p-ProgressNote_1A_AssignedEntity_code_2_17_20_i_b-error_mdht" see="#p-ProgressNote_1A_AssignedEntity_code_2_17_20_i_b-error_mdht" name="p-ProgressNote_1A_AssignedEntity_code_2_17_20_i_b-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informant/assignedEntity
			UML root path: /GeneralHeaderConstraints/informant/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:informant/cda:assignedEntity">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsInformantAssignedEntityCodeP
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: ProgressNote - 2.17.20.i.b code
		Conformance: MAY contain zero or one [0..1] code, which SHOULD be selected from (CodeSystem: 2.16.840.1.113883.6.101 NUCC Health Care Provider Taxonomy) (CONF:9947)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.101')
			Constraint name: GeneralHeaderConstraintsInformantAssignedEntityCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.101']">Error: ProgressNote - 2.17.20.i.b code
		Conformance: MAY contain zero or one [0..1] code, which SHOULD be selected from (CodeSystem: 2.16.840.1.113883.6.101 NUCC Health Care Provider Taxonomy) (CONF:9947)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssignedEntity -->

<pattern id="p-ProgressNote_1A_AssignedEntity_addr_2_17_20_i_c-error_mdht" see="#p-ProgressNote_1A_AssignedEntity_addr_2_17_20_i_c-error_mdht" name="p-ProgressNote_1A_AssignedEntity_addr_2_17_20_i_c-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informant/assignedEntity
			UML root path: /GeneralHeaderConstraints/informant/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:informant/cda:assignedEntity">
		<!--
			OCL: ((not self.addr->isEmpty()) and self.addr->exists(element | element.isNullFlavorUndefined())) implies (not self.addr->isEmpty())
			Constraint name: GeneralHeaderConstraintsInformantAssignedEntityAddr
		-->
	<assert test="not(cda:addr and cda:addr[not(@nullFlavor)]) or cda:addr">Error: ProgressNote - 2.17.20.i.c addr
		Conformance: SHOULD contain zero or more [0..*] addr (CONF:8220)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- RelatedEntity -->

<pattern id="p-ProgressNote_1A_RelatedEntity_person_2_17_20_ii_b-error_mdht" see="#p-ProgressNote_1A_RelatedEntity_person_2_17_20_ii_b-error_mdht" name="p-ProgressNote_1A_RelatedEntity_person_2_17_20_ii_b-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informant/relatedEntity
			UML root path: /GeneralHeaderConstraints/informant/relatedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:informant/cda:relatedEntity">
		<!--
			OCL: self.relatedPerson->one(relatedPerson : cda::Person | not relatedPerson.oclIsUndefined() and relatedPerson.oclIsKindOf(consol::GeneralHeaderConstraints::Informant::AssignedEntity::Person))
			Constraint name: GeneralHeaderConstraintsInformantRelatedEntityPerson
		-->
	<assert test="count(cda:relatedPerson)=1">Error: ProgressNote - 2.17.20.ii.b person
		Conformance: SHALL contain exactly one [1..1] relatedPerson (CONF:8221)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- RelatedEntity -->

<pattern id="p-ProgressNote_1A_RelatedEntity_addr_2_17_20_ii_a-error_mdht" see="#p-ProgressNote_1A_RelatedEntity_addr_2_17_20_ii_a-error_mdht" name="p-ProgressNote_1A_RelatedEntity_addr_2_17_20_ii_a-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informant/relatedEntity
			UML root path: /GeneralHeaderConstraints/informant/relatedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:informant/cda:relatedEntity">
		<!--
			OCL: ((not self.addr->isEmpty()) and self.addr->exists(element | element.isNullFlavorUndefined())) implies (not self.addr->isEmpty())
			Constraint name: GeneralHeaderConstraintsInformantRelatedEntityAddr
		-->
	<assert test="not(cda:addr and cda:addr[not(@nullFlavor)]) or cda:addr">Error: ProgressNote - 2.17.20.ii.a addr
		Conformance: SHOULD contain zero or more [0..*] addr (CONF:8220)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ParticipantSupport -->

<pattern id="p-ProgressNote_1A_ParticipantSupport_GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization_2_17_21_ii-error_mdht" see="#p-ProgressNote_1A_ParticipantSupport_GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization_2_17_21_ii-error_mdht" name="p-ProgressNote_1A_ParticipantSupport_GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization_2_17_21_ii-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/supportParticipant
			UML root path: /GeneralHeaderConstraints/supportParticipant
		-->
	<rule context="/cda:ClinicalDocument/cda:participant">
		<!--
			OCL: (not self.associatedEntity.associatedPerson.oclIsUndefined()) or (not self.associatedEntity.scopingOrganization.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization
		-->
	<assert test="cda:associatedEntity/cda:associatedPerson or cda:associatedEntity/cda:scopingOrganization">Error: ProgressNote - 2.17.21.ii GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization
		Conformance: Such participants, if present, SHALL have an associatedPerson or scopingOrganization element under participant/associatedEntity. (CONF:10006)
		Analysis: Such participants, if present, SHALL have an associatedPerson or scopingOrganization element under participant/associatedEntity.
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- RecordTarget -->

<pattern id="p-ProgressNote_1A_RecordTarget_patientRole_2_17_12_i-error_mdht" see="#p-ProgressNote_1A_RecordTarget_patientRole_2_17_12_i-error_mdht" name="p-ProgressNote_1A_RecordTarget_patientRole_2_17_12_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget
			UML root path: /GeneralHeaderConstraints/recordTarget
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget">
		<!--
			OCL: self.patientRole->one(patientRole : cda::PatientRole | not patientRole.oclIsUndefined() and patientRole.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRole
		-->
	<assert test="count(cda:patientRole)=1">Error: ProgressNote - 2.17.12.i patientRole
		Conformance: SHALL contain exactly one [1..1] patientRole (CONF:5268)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PatientRole -->

<pattern id="p-ProgressNote_1A_PatientRole_patient_2_17_12_i_d-error_mdht" see="#p-ProgressNote_1A_PatientRole_patient_2_17_12_i_d-error_mdht" name="p-ProgressNote_1A_PatientRole_patient_2_17_12_i_d-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
		<!--
			OCL: self.patient->one(patient : cda::Patient | not patient.oclIsUndefined() and patient.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole::Patient))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatient
		-->
	<assert test="count(cda:patient)=1">Error: ProgressNote - 2.17.12.i.d patient
		Conformance: SHALL contain exactly one [1..1] patient (CONF:1198-5283)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-ProgressNote_1A_Patient_birthTime_2_17_12_i_d_3-error_mdht" see="#p-ProgressNote_1A_Patient_birthTime_2_17_12_i_d_3-error_mdht" name="p-ProgressNote_1A_Patient_birthTime_2_17_12_i_d_3-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: not self.birthTime.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthTime
		-->
	<assert test="cda:birthTime">Error: ProgressNote - 2.17.12.i.d.3 birthTime
		Conformance: SHALL contain exactly one [1..1] birthTime (CONF:5298)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-ProgressNote_1A_Patient_raceCode_2_17_12_i_d_6-error_mdht" see="#p-ProgressNote_1A_Patient_raceCode_2_17_12_i_d_6-error_mdht" name="p-ProgressNote_1A_Patient_raceCode_2_17_12_i_d_6-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: ((not self.raceCode.oclIsUndefined()) and self.raceCode.isNullFlavorUndefined()) implies (not self.raceCode.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientRaceCodeP
		-->
	<assert test="not(cda:raceCode and not(cda:raceCode/@nullFlavor)) or cda:raceCode">Error: ProgressNote - 2.17.12.i.d.6 raceCode
		Conformance: SHOULD contain zero or one [0..1] raceCode, which SHALL be selected from ValueSet Race 2.16.840.1.113883.1.11.14914 DYNAMIC (CONF:5322)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.raceCode.oclIsUndefined()) and self.raceCode.isNullFlavorUndefined()) implies (not self.raceCode.oclIsUndefined() and self.raceCode.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.raceCode.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.238' and not value.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientRaceCode
		-->
	<assert test="not(cda:raceCode and not(cda:raceCode/@nullFlavor)) or cda:raceCode and cda:raceCode[@codeSystem = '2.16.840.1.113883.6.238' and @code]">Error: ProgressNote - 2.17.12.i.d.6 raceCode
		Conformance: SHOULD contain zero or one [0..1] raceCode, which SHALL be selected from ValueSet Race 2.16.840.1.113883.1.11.14914 DYNAMIC (CONF:5322)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-ProgressNote_1A_Patient_ethnicGroupCode_2_17_12_i_d_8-error_mdht" see="#p-ProgressNote_1A_Patient_ethnicGroupCode_2_17_12_i_d_8-error_mdht" name="p-ProgressNote_1A_Patient_ethnicGroupCode_2_17_12_i_d_8-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: ((not self.ethnicGroupCode.oclIsUndefined()) and self.ethnicGroupCode.isNullFlavorUndefined()) implies (not self.ethnicGroupCode.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientEthnicGroupCodeP
		-->
	<assert test="not(cda:ethnicGroupCode and not(cda:ethnicGroupCode/@nullFlavor)) or cda:ethnicGroupCode">Error: ProgressNote - 2.17.12.i.d.8 ethnicGroupCode
		Conformance: MAY contain zero or one [0..1] ethnicGroupCode, which SHALL be selected from ValueSet Ethnicity Value Set 2.16.840.1.114222.4.11.837 DYNAMIC (CONF:5323)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.ethnicGroupCode.oclIsUndefined()) and self.ethnicGroupCode.isNullFlavorUndefined()) implies (not self.ethnicGroupCode.oclIsUndefined() and self.ethnicGroupCode.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.ethnicGroupCode.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.238' and (value.code = '2135-2' or value.code = '2186-5'))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientEthnicGroupCode
		-->
	<assert test="not(cda:ethnicGroupCode and not(cda:ethnicGroupCode/@nullFlavor)) or cda:ethnicGroupCode and cda:ethnicGroupCode[@codeSystem = '2.16.840.1.113883.6.238' and (@code = '2135-2' or @code = '2186-5')]">Error: ProgressNote - 2.17.12.i.d.8 ethnicGroupCode
		Conformance: MAY contain zero or one [0..1] ethnicGroupCode, which SHALL be selected from ValueSet Ethnicity Value Set 2.16.840.1.114222.4.11.837 DYNAMIC (CONF:5323)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-ProgressNote_1A_Patient_languageCommunication_2_17_12_i_d_11-error_mdht" see="#p-ProgressNote_1A_Patient_languageCommunication_2_17_12_i_d_11-error_mdht" name="p-ProgressNote_1A_Patient_languageCommunication_2_17_12_i_d_11-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: self.languageCommunication->select(languageCommunication : cda::LanguageCommunication | not languageCommunication.oclIsUndefined() and languageCommunication.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole::Patient::LanguageCommunication))->size() >= 0
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunication
		-->
	<assert test="count(cda:languageCommunication) &gt;= 0">Error: ProgressNote - 2.17.12.i.d.11 languageCommunication
		Conformance: SHOULD contain zero or more [0..*] languageCommunication (CONF:5406)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-ProgressNote_1A_Patient_GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode_2_17_12_i_d_12-error_mdht" see="#p-ProgressNote_1A_Patient_GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode_2_17_12_i_d_12-error_mdht" name="p-ProgressNote_1A_Patient_GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode_2_17_12_i_d_12-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: sDTCRaceCode->notEmpty() implies not raceCode.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode
		-->
	<assert test="not(ext:sDTCRaceCode) or cda:raceCode">Error: ProgressNote - 2.17.12.i.d.12 GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode
		Conformance: If sdtc:raceCode is present, then the patient SHALL contain [1..1] raceCode (CONF:31347, R2.1=CONF:1198-31347)
		Analysis: If sdtc:raceCode is present, then the patient SHALL contain [1..1] raceCode
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-ProgressNote_1A_Patient_guardian_2_17_12_i_d_9-error_mdht" see="#p-ProgressNote_1A_Patient_guardian_2_17_12_i_d_9-error_mdht" name="p-ProgressNote_1A_Patient_guardian_2_17_12_i_d_9-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: self.guardian->select(guardian : cda::Guardian | not guardian.oclIsUndefined() and guardian.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole::Patient::Guardian))->size() >= 0
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardian
		-->
	<assert test="count(cda:guardian) &gt;= 0">Error: ProgressNote - 2.17.12.i.d.9 guardian
		Conformance: MAY contain zero or more [0..*] guardian (CONF:5325)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-ProgressNote_1A_Patient_birthplace_2_17_12_i_d_10-error_mdht" see="#p-ProgressNote_1A_Patient_birthplace_2_17_12_i_d_10-error_mdht" name="p-ProgressNote_1A_Patient_birthplace_2_17_12_i_d_10-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: self.birthplace->select(birthplace : cda::Birthplace | not birthplace.oclIsUndefined() and birthplace.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole::Patient::Birthplace))->size() <= 1
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplace
		-->
	<assert test="count(cda:birthplace) &lt;= 1">Error: ProgressNote - 2.17.12.i.d.10 birthplace
		Conformance: MAY contain zero or one [0..1] birthplace (CONF:5395)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-ProgressNote_1A_USRealmPatientName_GeneralHeaderConstraints_2_10-error_mdht" see="#p-ProgressNote_1A_USRealmPatientName_GeneralHeaderConstraints_2_10-error_mdht" name="p-ProgressNote_1A_USRealmPatientName_GeneralHeaderConstraints_2_10-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL: getText(true)=''
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameUSRealmPatientNameMixedContent
		-->
	<assert test="string(@id=true()// text()) = ''">Error: ProgressNote - 2.10 USRealmHeader
		Conformance: 
		Analysis: US Realm Patient Name SHALL NOT have mixed content except for white space
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-ProgressNote_1A_USRealmPatientName_prefix_2_19_5_ii_b_1_iv-error_mdht" see="#p-ProgressNote_1A_USRealmPatientName_prefix_2_19_5_ii_b_1_iv-error_mdht" name="p-ProgressNote_1A_USRealmPatientName_prefix_2_19_5_ii_b_1_iv-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.prefix->isEmpty()) and self.prefix->exists(element | element.isNullFlavorUndefined())) implies (not self.prefix->isEmpty()) ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNamePrefix
		-->
	<assert test="@nullFlavor or not(cda:prefix and cda:prefix[not(@nullFlavor)]) or cda:prefix">Error: ProgressNote - 2.19.5.ii.b.1.iv prefix
		Conformance: MAY contain zero or more [0..*] prefix (CONF:7155, R2.1=CONF:81-7155)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-ProgressNote_1A_USRealmPatientName_use_2_19_5_ii_b_1_i-error_mdht" see="#p-ProgressNote_1A_USRealmPatientName_use_2_19_5_ii_b_1_i-error_mdht" name="p-ProgressNote_1A_USRealmPatientName_use_2_19_5_ii_b_1_i-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies ((not self.use->isEmpty()) implies (self.use->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(vocab::EntityNameUse) and 
let value : vocab::EntityNameUse = element.oclAsType(vocab::EntityNameUse) in 
value = vocab::EntityNameUse::A or value = vocab::EntityNameUse::ABC or value = vocab::EntityNameUse::ASGN or value = vocab::EntityNameUse::C or value = vocab::EntityNameUse::I or value = vocab::EntityNameUse::IDE or value = vocab::EntityNameUse::L or value = vocab::EntityNameUse::P or value = vocab::EntityNameUse::PHON or value = vocab::EntityNameUse::R or value = vocab::EntityNameUse::SNDX or value = vocab::EntityNameUse::SRCH or value = vocab::EntityNameUse::SYL)) ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameUse
		-->
	<assert test="@nullFlavor or not(@use) or not(@use[not(. and . = 'A' or . = 'ABC' or . = 'ASGN' or . = 'C' or . = 'I' or . = 'IDE' or . = 'L' or . = 'P' or . = 'PHON' or . = 'R' or . = 'SNDX' or . = 'SRCH' or . = 'SYL')])">Error: ProgressNote - 2.19.5.ii.b.1.i use
		Conformance: MAY contain zero or one [0..1] @use, which SHALL be selected from ValueSet EntityNameUse 2.16.840.1.113883.1.11.15913 STATIC (CONF:7154, R2.1=CONF:81-7154)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies ((not self.use->isEmpty()) implies (self.use->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameUseP
		-->
	<assert test="@nullFlavor or not(@use) or count(@use) &lt;= 1">Error: ProgressNote - 2.19.5.ii.b.1.i use
		Conformance: MAY contain zero or one [0..1] @use, which SHALL be selected from ValueSet EntityNameUse 2.16.840.1.113883.1.11.15913 STATIC (CONF:7154, R2.1=CONF:81-7154)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-ProgressNote_1A_USRealmPatientName_family_2_19_5_ii_b_1_ii-error_mdht" see="#p-ProgressNote_1A_USRealmPatientName_family_2_19_5_ii_b_1_ii-error_mdht" name="p-ProgressNote_1A_USRealmPatientName_family_2_19_5_ii_b_1_ii-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (self.family->size() = 1 ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameFamily
		-->
	<assert test="@nullFlavor or count(cda:family) = 1">Error: ProgressNote - 2.19.5.ii.b.1.ii family
		Conformance: SHALL contain exactly one [1..1] family (CONF:7159, R2.1=CONF:81-7159)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-ProgressNote_1A_USRealmPatientName_given_2_19_5_ii_b_1_iii-error_mdht" see="#p-ProgressNote_1A_USRealmPatientName_given_2_19_5_ii_b_1_iii-error_mdht" name="p-ProgressNote_1A_USRealmPatientName_given_2_19_5_ii_b_1_iii-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (not self.given->isEmpty() ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameGiven
		-->
	<assert test="@nullFlavor or cda:given">Error: ProgressNote - 2.19.5.ii.b.1.iii given
		Conformance: SHALL contain at least one [1..*] given (CONF:7157, R2.1=CONF:81-7157)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-ProgressNote_1A_USRealmPatientName_suffix_2_19_5_ii_b_1_v-error_mdht" see="#p-ProgressNote_1A_USRealmPatientName_suffix_2_19_5_ii_b_1_v-error_mdht" name="p-ProgressNote_1A_USRealmPatientName_suffix_2_19_5_ii_b_1_v-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.suffix->isEmpty()) and self.suffix->exists(element | element.isNullFlavorUndefined())) implies (self.suffix->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameSuffix
		-->
	<assert test="@nullFlavor or not(cda:suffix and cda:suffix[not(@nullFlavor)]) or count(cda:suffix) &lt;= 1">Error: ProgressNote - 2.19.5.ii.b.1.v suffix
		Conformance: MAY contain zero or one [0..1] suffix (CONF:7161, R2.1=CONF:81-7161)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- TS -->

<pattern id="p-ProgressNote_1A_TS_value_2_17_12_i_d_3_i-error_mdht" see="#p-ProgressNote_1A_TS_value_2_17_12_i_d_3_i-error_mdht" name="p-ProgressNote_1A_TS_value_2_17_12_i_d_3_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthTime
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthTime
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (not self.value.oclIsUndefined() ))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientTSValue
		-->
	<assert test="@nullFlavor or @value">Error: ProgressNote - 2.17.12.i.d.3.i value
		Conformance: SHALL contain exactly one [1..1] value (CONF:5299, CONF:5300)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Guardian -->

<pattern id="p-ProgressNote_1A_Guardian_telecom_2_17_12_i_d_9_iii-error_mdht" see="#p-ProgressNote_1A_Guardian_telecom_2_17_12_i_d_9_iii-error_mdht" name="p-ProgressNote_1A_Guardian_telecom_2_17_12_i_d_9_iii-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian">
		<!--
			OCL: ((not self.telecom->isEmpty()) and self.telecom->exists(element | element.isNullFlavorUndefined())) implies (not self.telecom->isEmpty())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianTelecom
		-->
	<assert test="not(cda:telecom and cda:telecom[not(@nullFlavor)]) or cda:telecom">Error: ProgressNote - 2.17.12.i.d.9.iii telecom
		Conformance: MAY contain zero or more [0..*] telecom
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Guardian -->

<pattern id="p-ProgressNote_1A_Guardian_GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty_2_17_12_i_d_9_v-error_mdht" see="#p-ProgressNote_1A_Guardian_GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty_2_17_12_i_d_9_v-error_mdht" name="p-ProgressNote_1A_Guardian_GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty_2_17_12_i_d_9_v-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian">
		<!--
			OCL: (not code.oclIsUndefined()) and code.isNullFlavorUndefined() implies
(code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.5.111' and (value.code = 'ADOPT' or value.code = 'AUNT' or value.code = 'CHILD' or value.code = 'CHLDINLAW' or value.code = 'COUSN' or value.code = 'DOMPART' or value.code = 'FAMMEMB' or value.code = 'CHLDFOST' or value.code = 'GRNDCHILD' or value.code = 'GPARNT' or value.code = 'GRPRN' or value.code = 'GGRPRN' or value.code = 'HSIB' or value.code = 'MAUNT' or value.code = 'MCOUSN' or value.code = 'MGRPRN' or value.code = 'MGGRPRN' or value.code = 'MUNCLE' or value.code = 'NCHILD' or value.code = 'NPRN' or value.code = 'NSIB' or value.code = 'NBOR' or value.code = 'NIENEPH' or value.code = 'PRN' or value.code = 'PRNINLAW' or value.code = 'PAUNT' or value.code = 'PCOUSN' or value.code = 'PGRPRN' or value.code = 'PGGRPRN' or value.code = 'PUNCLE' or value.code = 'ROOM' or value.code = 'SIB' or value.code = 'SIBINLAW' or value.code = 'SIGOTHR' or value.code = 'SPS' or value.code = 'STEP' or value.code = 'STPPRN' or value.code = 'STPSIB' or value.code = 'UNCLE' or value.code = 'FRND' or value.code = 'RESPRSN' or value.code = 'EXCEST' or value.code = 'GUADLTM' or value.code = 'GUARD' or value.code = 'POWATT' or value.code = 'DPOWATT' or value.code = 'HPOWATT' or value.code = 'SPOWATT'))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code[@codeSystem = '2.16.840.1.113883.5.111' and (@code = 'ADOPT' or @code = 'AUNT' or @code = 'CHILD' or @code = 'CHLDINLAW' or @code = 'COUSN' or @code = 'DOMPART' or @code = 'FAMMEMB' or @code = 'CHLDFOST' or @code = 'GRNDCHILD' or @code = 'GPARNT' or @code = 'GRPRN' or @code = 'GGRPRN' or @code = 'HSIB' or @code = 'MAUNT' or @code = 'MCOUSN' or @code = 'MGRPRN' or @code = 'MGGRPRN' or @code = 'MUNCLE' or @code = 'NCHILD' or @code = 'NPRN' or @code = 'NSIB' or @code = 'NBOR' or @code = 'NIENEPH' or @code = 'PRN' or @code = 'PRNINLAW' or @code = 'PAUNT' or @code = 'PCOUSN' or @code = 'PGRPRN' or @code = 'PGGRPRN' or @code = 'PUNCLE' or @code = 'ROOM' or @code = 'SIB' or @code = 'SIBINLAW' or @code = 'SIGOTHR' or @code = 'SPS' or @code = 'STEP' or @code = 'STPPRN' or @code = 'STPSIB' or @code = 'UNCLE' or @code = 'FRND' or @code = 'RESPRSN' or @code = 'EXCEST' or @code = 'GUADLTM' or @code = 'GUARD' or @code = 'POWATT' or @code = 'DPOWATT' or @code = 'HPOWATT' or @code = 'SPOWATT')]">Error: ProgressNote - 2.17.12.i.d.9.v GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty
		Conformance: The guardian code, if present, SHALL be selected from ValueSet PersonalRelationshipRoleType 2.16.840.1.113883.1.11.19563 DYNAMIC or ValueSet Responsible Party 2.16.840.1.113883.1.11.19830 DYNAMIC (CONF:5326)
		Analysis: The guardian code, if present, SHALL be selected from ValueSet PersonalRelationshipRoleType 2.16.840.1.113883.1.11.19563 DYNAMIC or ValueSet Responsible Party 2.16.840.1.113883.1.11.19830 DYNAMIC
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Guardian -->

<pattern id="p-ProgressNote_1A_Guardian_code_2_17_12_i_d_9_i-error_mdht" see="#p-ProgressNote_1A_Guardian_code_2_17_12_i_d_9_i-error_mdht" name="p-ProgressNote_1A_Guardian_code_2_17_12_i_d_9_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: ProgressNote - 2.17.12.i.d.9.i code
		Conformance: SHOULD contain zero or one [0..1] code (CONF:5326)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- TEL -->

<pattern id="p-ProgressNote_1A_TEL_use_2_17_12_i_d_9_iii_a-error_mdht" see="#p-ProgressNote_1A_TEL_use_2_17_12_i_d_9_iii_a-error_mdht" name="p-ProgressNote_1A_TEL_use_2_17_12_i_d_9_iii_a-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian/telecom
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian/telecom
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:telecom">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies ((not self.use->isEmpty()) implies (self.use->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianTELUse
		-->
	<assert test="@nullFlavor or not(@use) or count(@use) &lt;= 1">Error: ProgressNote - 2.17.12.i.d.9.iii.a use
		Conformance: SHOULD contain zero or one [0..1] @use (CONF:7993, R2.1=CONF:1198-7993)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Birthplace -->

<pattern id="p-ProgressNote_1A_Birthplace_place_2_17_12_i_d_10_i-error_mdht" see="#p-ProgressNote_1A_Birthplace_place_2_17_12_i_d_10_i-error_mdht" name="p-ProgressNote_1A_Birthplace_place_2_17_12_i_d_10_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthplace
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthplace
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace">
		<!--
			OCL: self.place->one(place : cda::Place | not place.oclIsUndefined() and place.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole::Patient::Birthplace::Place))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlace
		-->
	<assert test="count(cda:place)=1">Error: ProgressNote - 2.17.12.i.d.10.i place
		Conformance: SHALL contain exactly one [1..1] place (CONF:5396)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Place -->

<pattern id="p-ProgressNote_1A_Place_GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState_2_17_12_i_d_10_i_b-error_mdht" see="#p-ProgressNote_1A_Place_GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState_2_17_12_i_d_10_i_b-error_mdht" name="p-ProgressNote_1A_Place_GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState_2_17_12_i_d_10_i_b-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthplace/place
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthplace/place
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place">
		<!--
			OCL: (addr.country->exists(curCountry | not curCountry.oclIsUndefined() and curCountry.getText() = 'US')) implies (addr.state->size() = 1) and ((addr.state->exists(curState | (curState.getText() = 'AL' or curState.getText() = 'AK' or curState.getText() = 'AS' or curState.getText() = 'AZ' or curState.getText() = 'AR' or curState.getText() = 'CA' or curState.getText() = 'CO' or curState.getText() = 'CT' or curState.getText() = 'DE' or curState.getText() = 'DC' or curState.getText() = 'FL' or curState.getText() = 'FM' or curState.getText() = 'GA' or curState.getText() = 'GU' or curState.getText() = 'HI' or curState.getText() = 'ID' or curState.getText() = 'IL' or curState.getText() = 'IN' or curState.getText() = 'IA' or curState.getText() = 'KS' or curState.getText() = 'KY' or curState.getText() = 'LA' or curState.getText() = 'ME' or curState.getText() = 'MH' or curState.getText() = 'MD' or curState.getText() = 'MA' or curState.getText() = 'MI' or curState.getText() = 'MN' or curState.getText() = 'MS' or curState.getText() = 'MO' or curState.getText() = 'MT' or curState.getText() = 'NE' or curState.getText() = 'NV' or curState.getText() = 'NH' or curState.getText() = 'NJ' or curState.getText() = 'NM' or curState.getText() = 'NY' or curState.getText() = 'NC' or curState.getText() = 'ND' or curState.getText() = 'MP' or curState.getText() = 'OH' or curState.getText() = 'OK' or curState.getText() = 'OR' or curState.getText() = 'PW' or curState.getText() = 'PA' or curState.getText() = 'PR' or curState.getText() = 'RI' or curState.getText() = 'SC' or curState.getText() = 'SD' or curState.getText() = 'TN' or curState.getText() = 'TX' or curState.getText() = 'UM' or curState.getText() = 'UT' or curState.getText() = 'VT' or curState.getText() = 'VA' or curState.getText() = 'VI' or curState.getText() = 'WA' or curState.getText() = 'WV' or curState.getText() = 'WI' or curState.getText() = 'WY' ))) or (addr.state->exists(curState | curState.isNullFlavorDefined())))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState
		-->
	<assert test="not(cda:addr/cda:country[string(.//text()) = 'US']) or count(cda:addr/cda:state) = 1 and (cda:addr/cda:state[string(.//text()) = 'AL' or string(.//text()) = 'AK' or string(.//text()) = 'AS' or string(.//text()) = 'AZ' or string(.//text()) = 'AR' or string(.//text()) = 'CA' or string(.//text()) = 'CO' or string(.//text()) = 'CT' or string(.//text()) = 'DE' or string(.//text()) = 'DC' or string(.//text()) = 'FL' or string(.//text()) = 'FM' or string(.//text()) = 'GA' or string(.//text()) = 'GU' or string(.//text()) = 'HI' or string(.//text()) = 'ID' or string(.//text()) = 'IL' or string(.//text()) = 'IN' or string(.//text()) = 'IA' or string(.//text()) = 'KS' or string(.//text()) = 'KY' or string(.//text()) = 'LA' or string(.//text()) = 'ME' or string(.//text()) = 'MH' or string(.//text()) = 'MD' or string(.//text()) = 'MA' or string(.//text()) = 'MI' or string(.//text()) = 'MN' or string(.//text()) = 'MS' or string(.//text()) = 'MO' or string(.//text()) = 'MT' or string(.//text()) = 'NE' or string(.//text()) = 'NV' or string(.//text()) = 'NH' or string(.//text()) = 'NJ' or string(.//text()) = 'NM' or string(.//text()) = 'NY' or string(.//text()) = 'NC' or string(.//text()) = 'ND' or string(.//text()) = 'MP' or string(.//text()) = 'OH' or string(.//text()) = 'OK' or string(.//text()) = 'OR' or string(.//text()) = 'PW' or string(.//text()) = 'PA' or string(.//text()) = 'PR' or string(.//text()) = 'RI' or string(.//text()) = 'SC' or string(.//text()) = 'SD' or string(.//text()) = 'TN' or string(.//text()) = 'TX' or string(.//text()) = 'UM' or string(.//text()) = 'UT' or string(.//text()) = 'VT' or string(.//text()) = 'VA' or string(.//text()) = 'VI' or string(.//text()) = 'WA' or string(.//text()) = 'WV' or string(.//text()) = 'WI' or string(.//text()) = 'WY'] or cda:addr/cda:state[@nullFlavor])">Error: ProgressNote - 2.17.12.i.d.10.i.b GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState
		Conformance: If country is US, this addr SHALL contain exactly one [1..1] state, which SHALL be selected from ValueSet StateValueSet 2.16.840.1.113883.3.88.12.80.1 DYNAMIC (CONF:5402)
		Analysis: If country is US, this addr SHALL contain exactly one [1..1] state, which SHALL be selected from ValueSet StateValueSet 2.16.840.1.113883.3.88.12.80.1 DYNAMIC
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- LanguageCommunication -->

<pattern id="p-ProgressNote_1A_LanguageCommunication_preferenceInd_2_17_12_i_d_11_iv-error_mdht" see="#p-ProgressNote_1A_LanguageCommunication_preferenceInd_2_17_12_i_d_11_iv-error_mdht" name="p-ProgressNote_1A_LanguageCommunication_preferenceInd_2_17_12_i_d_11_iv-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/languageCommunication
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/languageCommunication
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication">
		<!--
			OCL: ((not self.preferenceInd.oclIsUndefined()) and self.preferenceInd.isNullFlavorUndefined()) implies (not self.preferenceInd.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationPreferenceInd
		-->
	<assert test="not(cda:preferenceInd and not(cda:preferenceInd/@nullFlavor)) or cda:preferenceInd">Error: ProgressNote - 2.17.12.i.d.11.iv preferenceInd
		Conformance: MAY contain zero or one [0..1] preferenceInd (CONF:5414)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- LanguageCommunication -->

<pattern id="p-ProgressNote_1A_LanguageCommunication_languageCode_2_17_12_i_d_11_i-error_mdht" see="#p-ProgressNote_1A_LanguageCommunication_languageCode_2_17_12_i_d_11_i-error_mdht" name="p-ProgressNote_1A_LanguageCommunication_languageCode_2_17_12_i_d_11_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/languageCommunication
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/languageCommunication
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication">
		<!--
			OCL: not self.languageCode.oclIsUndefined() and self.languageCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.languageCode.oclAsType(datatypes::CS) in 
not value.code.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationLanguageCode
		-->
	<assert test="cda:languageCode and cda:languageCode[@code]">Error: ProgressNote - 2.17.12.i.d.11.i languageCode
		Conformance: SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5407)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.languageCode.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationLanguageCodeP
		-->
	<assert test="cda:languageCode">Error: ProgressNote - 2.17.12.i.d.11.i languageCode
		Conformance: SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5407)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<pattern id="allcontexts_mdht" see="#allcontexts_mdht" name="allcontexts_mdht">
		<!--tests all contexts-->
	<rule context="/cda:ClinicalDocument">
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument">Cannot find context /cda:ClinicalDocument</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf">Cannot find context /cda:ClinicalDocument/cda:documentationOf</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:componentOf">Cannot find context /cda:ClinicalDocument/cda:componentOf</assert>
	<assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter">Cannot find context /cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter</assert>
	<assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter">Cannot find context /cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter</assert>
	<assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter">Cannot find context /cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter</assert>
	<assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location">Cannot find context /cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location</assert>
	<assert test="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility">Cannot find context /cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility</assert>
	<assert test="/cda:ClinicalDocument/cda:component">Cannot find context /cda:ClinicalDocument/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.8"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.8"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.8"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.8']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.8"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.39"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.39"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.39"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.10"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.39"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.9"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.9"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.9"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.9"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.9']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.9"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:code">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:code</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:code">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:code</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:code">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:code</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:participant</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:participant</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:participant/cda:participantRole</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:participant/cda:participantRole</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole/cda:playingEntity">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:participant/cda:participantRole/cda:playingEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole/cda:playingEntity">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:participant/cda:participantRole/cda:playingEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole/cda:playingEntity">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:participant/cda:participantRole/cda:playingEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole/cda:playingEntity/cda:code">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:participant/cda:participantRole/cda:playingEntity/cda:code</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:participant/cda:participantRole/cda:playingEntity/cda:code">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:participant/cda:participantRole/cda:playingEntity/cda:code</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:entryRelationship</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.6.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.30']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.7']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.6.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.30"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.7"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "1.3.6.1.4.1.19376.1.5.3.1.1.13.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:drugVehicle[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.24"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:drugVehicle[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.24"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:drugVehicle[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.24"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:drugVehicle[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.24"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:drugVehicle[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.24"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:drugVehicle[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.24']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:drugVehicle[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.24"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:consumable</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:consumable/cda:manufacturedProduct</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:consumable/cda:manufacturedProduct</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:consumable/cda:manufacturedProduct</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:consumable/cda:manufacturedProduct</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:consumable/cda:manufacturedProduct</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:precondition</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:precondition</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition/cda:criterion[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:precondition/cda:criterion[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition/cda:criterion[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:precondition/cda:criterion[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition/cda:criterion[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:precondition/cda:criterion[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:precondition/cda:criterion[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:precondition/cda:criterion[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:entryRelationship</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:entryRelationship/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.20"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:entryRelationship/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.20"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:entryRelationship/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.20"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:entryRelationship/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.20"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:entryRelationship/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.20"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:entryRelationship/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.20"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.1.1']/cda:entry/cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.16']/cda:entryRelationship/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.20']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.1.1"]/cda:entry/cda:substanceAdministration[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.16"]/cda:entryRelationship/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.20"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '401238003']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship[cda:observation/cda:code/@code = "401238003"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '401238003']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship[cda:observation/cda:code/@code = "401238003"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401238003']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "401238003"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401238003']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "401238003"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401238003']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "401238003"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401238003']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "401238003"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '401239006']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship[cda:observation/cda:code/@code = "401239006"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '401239006']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship[cda:observation/cda:code/@code = "401239006"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401239006']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "401239006"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401239006']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "401239006"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401239006']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "401239006"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '401239006']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "401239006"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '425094009']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship[cda:observation/cda:code/@code = "425094009"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship[cda:observation/cda:code/@code = '425094009']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship[cda:observation/cda:code/@code = "425094009"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '425094009']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "425094009"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '425094009']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "425094009"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '425094009']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "425094009"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.2.10']/cda:entry/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.70']/cda:entryRelationship/cda:observation[cda:code/@code = '425094009']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.2.10"]/cda:entry/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.70"]/cda:entryRelationship/cda:observation[cda:code/@code = "425094009"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]/cda:entryRelationship</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.5.1"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.3"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.4"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship[cda:observation/cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship[cda:observation/cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.3.1']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.1']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.3.1"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.1"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.3.18']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "1.3.6.1.4.1.19376.1.5.3.1.3.18"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.3.18']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "1.3.6.1.4.1.19376.1.5.3.1.3.18"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.3.18']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "1.3.6.1.4.1.19376.1.5.3.1.3.18"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '1.3.6.1.4.1.19376.1.5.3.1.3.18']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "1.3.6.1.4.1.19376.1.5.3.1.3.18"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.21.2.2']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.21.2.2"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship[cda:observation/cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship[cda:observation/cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.4']/cda:entry/cda:organizer[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.26']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.4"]/cda:entry/cda:organizer[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.26"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.45"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.45"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.45"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.45"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.45"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.45']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.45"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:author">Cannot find context /cda:ClinicalDocument/cda:author</assert>
	<assert test="/cda:ClinicalDocument/cda:author/cda:assignedAuthor">Cannot find context /cda:ClinicalDocument/cda:author/cda:assignedAuthor</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr</assert>
	<assert test="/cda:ClinicalDocument/cda:dataEnterer">Cannot find context /cda:ClinicalDocument/cda:dataEnterer</assert>
	<assert test="/cda:ClinicalDocument/cda:dataEnterer/cda:assignedEntity">Cannot find context /cda:ClinicalDocument/cda:dataEnterer/cda:assignedEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:informationRecipient">Cannot find context /cda:ClinicalDocument/cda:informationRecipient</assert>
	<assert test="/cda:ClinicalDocument/cda:informant">Cannot find context /cda:ClinicalDocument/cda:informant</assert>
	<assert test="/cda:ClinicalDocument/cda:informant/cda:assignedEntity">Cannot find context /cda:ClinicalDocument/cda:informant/cda:assignedEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:informant/cda:assignedEntity">Cannot find context /cda:ClinicalDocument/cda:informant/cda:assignedEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:informant/cda:relatedEntity">Cannot find context /cda:ClinicalDocument/cda:informant/cda:relatedEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:informant/cda:relatedEntity">Cannot find context /cda:ClinicalDocument/cda:informant/cda:relatedEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:participant">Cannot find context /cda:ClinicalDocument/cda:participant</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget">Cannot find context /cda:ClinicalDocument/cda:recordTarget</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:telecom">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:telecom</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication</assert>
	<assert test="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication">Cannot find context /cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication</assert>
	</rule>
</pattern>

<phase id = "errors">

	<active pattern = "p-ProgressNote_1A_ProgressNote_custodian_2_17_16-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_recordTarget_2_17_12-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_typeId_2_17_3-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_dataEnterer_2_17_15-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_author_2_17_14-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_inFulfillmentOf_2_17_22-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_id_2_17_4-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_authorization_2_17_24-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_templateId_2_17_1-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_confidentialityCode_2_17_8-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_legalAuthenticator_2_17_18-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_HistoryAndPhysicalNote_2_11-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_effectiveTime_2_17_7-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_title_2_17_6-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_supportParticipant_2_17_21-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_code_2_17_3-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_documentationOf_2_17_4-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_authenticator_2_17_19-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_informant_2_17_20-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ProgressNote_componentOf_2_17_5-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_setId_2_17_10-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ProgressNote_component_2_17_6-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_versionNumber_2_17_11-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_realmCode_2_17_2-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_languageCode_2_17_9-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ProgressNote_informationRecipient_2_17_17-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_DocumentationOf_serviceEvent2_2_17_4_i-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ServiceEvent2_effectiveTime_2_17_4_i_b-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ServiceEvent2_ProgressNoteDocumentationOfServiceEvent2EffectiveTimeLow_2_17_4_i_c-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ServiceEvent2_classCode_2_17_4_i_a-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ServiceEvent2_templateId_2_17_4_i_a-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ServiceEvent2_ProgressNoteDocumentationOfServiceEvent2EffectiveTimeHigh_2_17_4_i_d-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ComponentOf_encompassingEncounter6_2_17_5_i-error_mdht"/>
	<active pattern = "p-ProgressNote_2_EncompassingEncounter6_location_2_17_5_i_c-error_mdht"/>
	<active pattern = "p-ProgressNote_2_EncompassingEncounter6_id_2_17_5_i_b-error_mdht"/>
	<active pattern = "p-ProgressNote_2_EncompassingEncounter6_effectiveTime_2_17_5_i_a-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Location_healthCareFacility_2_17_5_i_c_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_HealthCareFacility1_id_2_17_5_i_c_1_i-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_structuredBody_2_17_6_i-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_planOfCareSection_2_17_6_i_b-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_interventionsSection_2_17_6_i_f-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_chiefComplaintSection_2_17_6_i_e-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_objectiveSection_2_17_6_i_h-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_assessmentAndPlanSection_2_17_6_i_c-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_problemSectionEntriesOptional_2_17_6_i_j-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_subjectiveSection_2_17_6_i_m-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_resultsSectionEntriesOptional_2_17_6_i_k-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_instructionsSection_2_17_6_i_o-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_physicalExamSection_2_17_6_i_i-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_allergiesSectionEntriesOptional_2_17_6_i_d-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_assessmentSection_2_17_6_i_a-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_vitalSignsSectionEntriesOptional_2_17_6_i_n-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_medicationsSectionEntriesOptional_2_17_6_i_g-error_mdht"/>
	<active pattern = "p-ProgressNote_2_StructuredBody_reviewOfSystemsSection_2_17_6_i_l-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_assessmentSection_2_17_6_i_a_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AssessmentSection_templateId_3_15_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AssessmentSection_text_3_15_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AssessmentSection_title_3_15_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AssessmentSection_code_3_15_2-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_planOfCareSection_2_17_6_i_b_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_PlanOfCareSection_templateId_3_81_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareSection_entry_3_81_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareSection_entry_3_81_9-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareSection_entry_3_81_11-error_mdht"/>
	<active pattern = "p-ProgressNote_2_PlanOfCareSection_text_3_82_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_PlanOfCareSection_code_3_81_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareSection_entry_3_81_5-error_mdht"/>
	<active pattern = "p-ProgressNote_2_PlanOfCareSection_title_3_82_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareSection_entry_3_81_10-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareSection_entry_3_81_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareSection_entry_3_81_8-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_81_5_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareActivityAct_moodCode_4_97_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareActivityAct_templateId_4_97_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareActivityAct_classCode_4_88_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareActivityAct_id_4_88_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_assessmentAndPlanSection_2_17_6_i_c_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AssessmentAndPlanSection_text_3_14_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AssessmentAndPlanSection_templateId_3_13_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AssessmentAndPlanSection_entry_3_13_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AssessmentAndPlanSection_code_3_13_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_13_4_i-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_allergiesSectionEntriesOptional_2_17_6_i_d_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AllergiesSectionEntriesOptional_title_3_10_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AllergiesSectionEntriesOptional_text_3_10_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AllergiesSectionEntriesOptional_code_3_9_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergiesSectionEntriesOptional_entry_3_9_5-error_mdht"/>
	<active pattern = "p-ProgressNote_2_AllergiesSectionEntriesOptional_templateId_3_9_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyProblemActEntry_allergyProblemAct_3_9_5_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyProblemAct_classCode_4_7_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyProblemAct_effectiveTime_4_7_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyProblemAct_moodCode_4_7_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyProblemAct_templateId_4_10_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyProblemAct_statusCode_4_7_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyProblemAct_AllergyProblemActEffectiveTimeLow_4_10_9-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyProblemAct_id_4_7_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyProblemAct_code_4_10_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyProblemAct_entryRelationship_4_10_8-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_CD_AllergyProblemActCDCodeAndCodeSystemValues_4_10_5_iii-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_CD_codeSystem_4_10_5_ii-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_CD_code_4_10_5_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservationEntryRelationship_allergyObservation_4_10_8_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_participant_4_8_10-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_13-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_statusCode_4_8_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_templateId_4_8_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_classCode_4_9_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_value_4_8_9-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_SubstanceOrDeviceAllergyObservationReactionInversionIndicator_4_8_20-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_moodCode_4_9_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_code_4_8_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_effectiveTime_4_8_8-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_AllergyObservationValueOriginalText_4_8_16-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_11-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_SubstanceOrDeviceAllergyObservationAllergyStatusInversionIndicator_4_8_19-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_entryRelationship_4_8_12-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_AllergyObservationReferenceValue_4_8_18-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_AllergyObservationOriginalTextReference_4_8_17-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyObservation_id_4_9_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Participant_typeCode_4_9_9_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Participant_participantRole__viii_b-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ParticipantRole_classCode__viii_b_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ParticipantRole_playingEntity__viii_b_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlayingEntity_code__viii_b_2_ii-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlayingEntity_AllergyObservationParticipantParticipantRolePlayingEntityCodeTerminologyValueSetGroupSRFI__viii_b_2_iii-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PlayingEntity_classCode__viii_b_2_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_CE_originalText__viii_b_2_ii_a-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_CE_translation__viii_b_2_ii_b-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyStatusObservationEntryRelationship_allergyStatusObservation_4_8_11_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyStatusObservation_moodCode_4_11_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyStatusObservation_classCode_4_11_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyStatusObservation_statusCode_4_11_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyStatusObservation_code_4_11_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyStatusObservation_templateId_4_11_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AllergyStatusObservation_value_4_11_6-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_chiefComplaintSection_2_17_6_i_e_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ChiefComplaintSection_code_3_17_2-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ChiefComplaintSection_title_3_17_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ChiefComplaintSection_templateId_3_17_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ChiefComplaintSection_text_3_17_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_interventionsSection_2_17_6_i_f_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_InterventionsSection_templateId_3_58_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_InterventionsSection_code_3_58_2-error_mdht"/>
	<active pattern = "p-ProgressNote_2_InterventionsSection_text_3_59_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_InterventionsSection_title_3_59_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_medicationsSectionEntriesOptional_2_17_6_i_g_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_MedicationsSectionEntriesOptional_templateId_3_67_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_MedicationsSectionEntriesOptional_title_3_68_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_MedicationsSectionEntriesOptional_code_3_67_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationsSectionEntriesOptional_entry_3_67_5-error_mdht"/>
	<active pattern = "p-ProgressNote_2_MedicationsSectionEntriesOptional_text_3_68_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivityEntry_medicationActivity_3_67_5_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_maxDoseQuantity_4_69_11-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_MedicationActivityDrugVehicleTypeCode_4_68_27-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_templateId_4_68_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_consumable_4_68_17-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_drugVehicle_4_69_16-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_id_4_69_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_moodCode_4_69_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_MedicationActivityEffectiveTimeTSValue_4_68_26-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_precondition_4_68_18-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_22-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_statusCode_4_68_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_doseQuantity_4_68_9-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_21-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_text_4_68_13-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_MedicationActivityDoseQuantityorrateQuantity_4_68_24-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_approachSiteCode_4_69_8-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_rateQuantity_4_69_10-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_performer_4_69_15-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_classCode_4_69_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_23-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_MedicationActivityTextReference_4_68_25-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_20-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_routeCode_4_68_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_entryRelationship_4_68_19-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_administrationUnitCode_4_68_12-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_code_4_68_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationActivity_repeatNumber_4_68_14-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_DrugVehicle_playingEntity_4_69_16_iv-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_DrugVehicle_DrugVehiclePlayingEntityCode_4_69_16_v-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_DrugVehicle_templateId_4_69_16_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_DrugVehicle_code_4_69_16_iii-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_DrugVehicle_classCode_4_69_16_ii-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_DrugVehicle_DrugVehiclePlayingEntityName_4_69_16_vi-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Consumable_medicationInformation_4_68_17_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationInformation_manufacturedMaterial_4_68_17_i_e-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationInformation_templateId_4_68_17_i_a-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationInformation_id_4_69_12_i_c-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationInformation_classCode_4_69_12_i_b-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationInformation_manufacturerOrganization_4_69_12_i_d-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationInformationManufacturedMaterial_MedicationInformationMedicationInformationManufacturedMaterialReference_4_68_17_i_e_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationInformationManufacturedMaterial_code_4_68_17_i_e_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_MedicationInformationManufacturedMaterial_MedicationInformationMedicationInformationManufacturedMaterialCodeTranslation_4_68_17_i_e_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Precondition_preconditionForSubstanceAdministration_4_68_18_ii-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Precondition_typeCode_4_68_18_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PreconditionForSubstanceAdministration_templateId_4_68_18_ii_a-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PreconditionForSubstanceAdministration_code_4_68_18_ii_b-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PreconditionForSubstanceAdministration_text_4_68_18_ii_c-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PreconditionForSubstanceAdministration_value_4_68_18_ii_d-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_InstructionsEntryRelationship_instructions_4_68_19_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Instructions_InstructionsTextReference_4_64_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Instructions_text_4_64_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Instructions_moodCode_4_63_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Instructions_classCode_4_63_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Instructions_statusCode_4_63_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Instructions_templateId_4_64_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Instructions_code_4_63_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_objectiveSection_2_17_6_i_h_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ObjectiveSection_templateId_3_71_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ObjectiveSection_title_3_71_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ObjectiveSection_text_3_71_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ObjectiveSection_code_3_71_2-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_physicalExamSection_2_17_6_i_i_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_PhysicalExamSection_title_3_77_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_PhysicalExamSection_code_3_76_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PhysicalExamSection_entry_3_76_5-error_mdht"/>
	<active pattern = "p-ProgressNote_2_PhysicalExamSection_templateId_3_76_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PhysicalExamSection_entry_3_76_6-error_mdht"/>
	<active pattern = "p-ProgressNote_2_PhysicalExamSection_text_3_77_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PhysicalExamSection_entry_3_76_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservationEntry_pressureUlcerObservation_3_76_5_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_text_4_110_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_statusCode_4_110_8-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_targetSiteCode_4_110_11-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_PressureUlcerObservationTargetSiteQualifier_4_110_15-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_ProblemObservation_4_114-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_entryRelationship_4_110_12-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_classCode_4_110_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_entryRelationship3_4_110_14-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_value_4_110_10-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_moodCode_4_110_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_templateId_4_110_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_negationInd_4_110_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_code_4_110_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_effectiveTime_4_110_9-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_id_4_110_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_PressureUlcerObservation_entryRelationship2_4_110_13-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_EntryRelationship1_typeCode_4_110_12_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_EntryRelationship1_observation1_4_110_12_ii-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation1_value_4_110_12_ii_d-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation1_classCode_4_110_12_ii_a-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation1_code_4_110_12_ii_c-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation1_moodCode_4_110_12_ii_b-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_EntryRelationship2_observation2_4_110_13_ii-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_EntryRelationship2_typeCode_4_110_13_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation2_value_4_110_13_ii_d-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation2_moodCode_4_110_13_ii_b-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation2_classCode_4_110_13_ii_a-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation2_code_4_110_13_ii_c-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_EntryRelationship3_observation3_4_110_14_ii-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_EntryRelationship3_typeCode_4_110_14_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation3_code_4_110_14_ii_c-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation3_classCode_4_110_14_ii_a-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation3_moodCode_4_110_14_ii_b-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Observation3_value_4_110_14_ii_d-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_problemSectionEntriesOptional_2_17_6_i_j_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ProblemSectionEntriesOptional_text_3_91_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemSectionEntriesOptional_entry_3_90_5-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ProblemSectionEntriesOptional_title_3_91_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ProblemSectionEntriesOptional_templateId_3_90_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ProblemSectionEntriesOptional_code_3_90_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemConcernActEntry_problemConcern_3_90_5_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemConcern_id_4_113_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemConcern_classCode_4_113_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemConcern_moodCode_4_113_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemConcern_entryRelationship_4_112_8-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemConcern_code_4_112_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemConcern_effectiveTime_4_112_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemConcern_templateId_4_112_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemConcern_statusCode_4_112_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservationEntryRelationship_problemObservation_4_112_8_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_ProblemObservationValueNullFlavor_4_114_14-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_11-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_templateId_4_114_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_statusCode_4_114_8-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_code_4_114_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_effectiveTime_4_114_9-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_13-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_moodCode_4_115_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_entryRelationship_4_114_12-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_id_4_66_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_ProblemObservationValueTranslation_4_114_15-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_text_4_114_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_value_4_114_10-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_classCode_4_115_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ProblemObservation_negationInd_4_114_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AgeObservationEntryRelationship_ageObservation_4_114_11_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AgeObservation_value_4_6_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AgeObservation_moodCode_4_6_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AgeObservation_AgeObservationValueUnits_4_6_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AgeObservation_templateId_4_6_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AgeObservation_statusCode_4_6_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AgeObservation_classCode_4_6_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_AgeObservation_code_4_6_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_resultsSectionEntriesOptional_2_17_6_i_k_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ResultsSectionEntriesOptional_templateId_3_110_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ResultsSectionEntriesOptional_entry_3_110_5-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ResultsSectionEntriesOptional_title_3_111_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ResultsSectionEntriesOptional_code_3_110_2-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ResultsSectionEntriesOptional_text_3_111_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ResultOrganizerEntry_resultOrganizer_3_110_5_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ResultOrganizer_templateId_4_133_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ResultOrganizer_code_4_134_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ResultOrganizer_id_4_134_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ResultOrganizer_ResultOrganizerClassCodeValue_4_133_8-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ResultOrganizer_classCode_4_134_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ResultOrganizer_moodCode_4_134_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ResultOrganizer_statusCode_4_134_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_ResultObservationEntryRelationship_resultObservation_4_133_7_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_classCode_4_132_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_value_4_131_9-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_moodCode_4_132_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_code_4_131_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_id_4_132_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_interpretationCode_4_131_10-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_targetSiteCode_4_132_12-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_text_4_131_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_methodCode_4_132_11-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_statusCode_4_132_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_effectiveTime_4_131_8-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_templateId_4_131_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_ResultObservationNoObservationRangeCode_4_131_13-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_Result_ResultObservationAuthorMultiplicity_4_131_14-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_reviewOfSystemsSection_2_17_6_i_l_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ReviewOfSystemsSection_templateId_3_112_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ReviewOfSystemsSection_title_3_112_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ReviewOfSystemsSection_text_3_112_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_ReviewOfSystemsSection_code_3_112_2-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_subjectiveSection_2_17_6_i_m_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_SubjectiveSection_title_3_115_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_SubjectiveSection_text_3_115_3-error_mdht"/>
	<active pattern = "p-ProgressNote_2_SubjectiveSection_code_3_115_2-error_mdht"/>
	<active pattern = "p-ProgressNote_2_SubjectiveSection_templateId_3_115_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_vitalSignsSectionEntriesOptional_2_17_6_i_n_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_VitalSignsSectionEntriesOptional_templateId_3_119_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_VitalSignsSectionEntriesOptional_title_3_120_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSignsSectionEntriesOptional_entry_3_119_5-error_mdht"/>
	<active pattern = "p-ProgressNote_2_VitalSignsSectionEntriesOptional_text_3_120_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_VitalSignsSectionEntriesOptional_code_3_119_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSignsOrganizerEntry_vitalSignsOrganizer_3_119_5_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSignsOrganizer_classCode_4_156_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSignsOrganizer_moodCode_4_156_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSignsOrganizer_code_4_155_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSignsOrganizer_effectiveTime_4_155_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSignsOrganizer_statusCode_4_156_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSignsOrganizer_id_4_156_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSignsOrganizer_templateId_4_155_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSignObservationEntryRelationship_vitalSignObservation_4_155_8_i-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_author_4_153_13-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_classCode_4_154_2-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_text_4_153_12-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_statusCode_4_154_6-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_interpretationCode_4_153_9-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_moodCode_4_154_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_value_4_153_8-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_VitalSignObservationTextReference_4_153_14-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_templateId_4_153_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_code_4_154_5-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_targetSiteCode_4_154_11-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_effectiveTime_4_153_7-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_id_4_154_4-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_VitalSign_methodCode_4_154_10-error_mdht"/>
	<active pattern = "p-ProgressNote_2_Component_instructionsSection_2_17_6_i_o_1-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_InstructionsSection_entry_3_56_5-error_mdht"/>
	<active pattern = "p-ProgressNote_2_InstructionsSection_templateId_3_56_1-error_mdht"/>
	<active pattern = "p-ProgressNote_2_InstructionsSection_text_3_57_4-error_mdht"/>
	<active pattern = "p-ProgressNote_2_InstructionsSection_code_3_56_2-error_mdht"/>
	<active pattern = "p-ProgressNote_2_InstructionsSection_title_3_57_3-error_mdht"/>
	<active pattern = "p-ProgressNote_3A_InstructionsEntry_instructions_3_56_5_i-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Author_assignedAuthor_2_17_14_ii-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_AssignedAuthor_code_2_17_14_ii_b-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmAddress_postalCode_4_4_6_iii_b_5-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmAddress_state_4_4_6_iii_b_3-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmAddress_city_4_4_6_iii_b_4-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmAddress_streetAddressLine_4_4_6_iii_b_6-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmAddress_use_4_4_6_iii_b_1-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmAddress_country_4_4_6_iii_b_2-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_DataEnterer_assignedEntity_2_17_15_i-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_AssignedEntity_code_2_17_15_i_b-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_InformationRecipient_intendedRecipient_2_17_17_i-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Informant_GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity_2_17_20_iii-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_AssignedEntity_code_2_17_20_i_b-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_AssignedEntity_addr_2_17_20_i_c-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_RelatedEntity_person_2_17_20_ii_b-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_RelatedEntity_addr_2_17_20_ii_a-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_ParticipantSupport_GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization_2_17_21_ii-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_RecordTarget_patientRole_2_17_12_i-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_PatientRole_patient_2_17_12_i_d-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Patient_birthTime_2_17_12_i_d_3-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Patient_raceCode_2_17_12_i_d_6-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Patient_ethnicGroupCode_2_17_12_i_d_8-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Patient_languageCommunication_2_17_12_i_d_11-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Patient_GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode_2_17_12_i_d_12-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Patient_guardian_2_17_12_i_d_9-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Patient_birthplace_2_17_12_i_d_10-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmPatientName_GeneralHeaderConstraints_2_10-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmPatientName_prefix_2_19_5_ii_b_1_iv-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmPatientName_use_2_19_5_ii_b_1_i-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmPatientName_family_2_19_5_ii_b_1_ii-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmPatientName_given_2_19_5_ii_b_1_iii-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_USRealmPatientName_suffix_2_19_5_ii_b_1_v-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_TS_value_2_17_12_i_d_3_i-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Guardian_telecom_2_17_12_i_d_9_iii-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Guardian_GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty_2_17_12_i_d_9_v-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Guardian_code_2_17_12_i_d_9_i-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_TEL_use_2_17_12_i_d_9_iii_a-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Birthplace_place_2_17_12_i_d_10_i-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_Place_GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState_2_17_12_i_d_10_i_b-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_LanguageCommunication_preferenceInd_2_17_12_i_d_11_iv-error_mdht"/>
	<active pattern = "p-ProgressNote_1A_LanguageCommunication_languageCode_2_17_12_i_d_11_i-error_mdht"/>

</phase>


<phase id = "contexts">

	<active pattern = "allcontexts_mdht"/>

</phase>


</schema>