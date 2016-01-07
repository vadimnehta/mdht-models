<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<!DOCTYPE schema [
]>

<schema xmlns="http://www.ascc.net/xml/schematron" xmlns:cda="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<title>Schematron schema for validating conformance to CONSOL documents</title>
<ns prefix="cda" uri="urn:hl7-org:v3"/>
<ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>

<ns prefix="ext" uri="http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_code_2_13_3-error_mdht" see="#p-OperativeNote_1A_OperativeNote_code_2_13_3-error_mdht" name="p-OperativeNote_1A_OperativeNote_code_2_13_3-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 2.13.3 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:17187), which SHALL be selected from ValueSet SurgicalOperationNoteDocumentTypeCode 2.16.840.1.113883.11.20.1.1 DYNAMIC (CONF:17188)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.1' and (value.code = '11504-8' or value.code = '34137-0' or value.code = '28583-3' or value.code = '28624-5' or value.code = '28573-4' or value.code = '34877-1' or value.code = '34874-8' or value.code = '34870-6' or value.code = '34868-0' or value.code = '34818-5')
			Constraint name: GeneralHeaderConstraintsCode
		-->
	<assert test="cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.1' and (@code = '11504-8' or @code = '34137-0' or @code = '28583-3' or @code = '28624-5' or @code = '28573-4' or @code = '34877-1' or @code = '34874-8' or @code = '34870-6' or @code = '34868-0' or @code = '34818-5')]">Error: OperativeNote - 2.13.3 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:17187), which SHALL be selected from ValueSet SurgicalOperationNoteDocumentTypeCode 2.16.840.1.113883.11.20.1.1 DYNAMIC (CONF:17188)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_effectiveTime_2_13_7-error_mdht" see="#p-OperativeNote_1A_OperativeNote_effectiveTime_2_13_7-error_mdht" name="p-OperativeNote_1A_OperativeNote_effectiveTime_2_13_7-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsEffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: OperativeNote - 2.13.7 effectiveTime
		Conformance: SHALL contain exactly one [1..1] effectiveTime (CONF:5256, R2.1=CONF:1198-5256)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_documentationOf_2_13_4-error_mdht" see="#p-OperativeNote_1A_OperativeNote_documentationOf_2_13_4-error_mdht" name="p-OperativeNote_1A_OperativeNote_documentationOf_2_13_4-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.documentationOf->exists(documentationOf : cda::DocumentationOf | not documentationOf.oclIsUndefined() and documentationOf.oclIsKindOf(cda::DocumentationOf))
			Constraint name: OperativeNoteDocumentationOf
		-->
	<assert test="cda:documentationOf">Error: OperativeNote - 2.13.4 documentationOf
		Conformance: SHALL contain at least one [1..*] documentationOf (CONF:8486)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_versionNumber_2_13_11-error_mdht" see="#p-OperativeNote_1A_OperativeNote_versionNumber_2_13_11-error_mdht" name="p-OperativeNote_1A_OperativeNote_versionNumber_2_13_11-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: ((not self.versionNumber.oclIsUndefined()) and self.versionNumber.isNullFlavorUndefined()) implies (not self.versionNumber.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsVersionNumber
		-->
	<assert test="not(cda:versionNumber and not(cda:versionNumber/@nullFlavor)) or cda:versionNumber">Error: OperativeNote - 2.13.11 versionNumber
		Conformance: MAY contain zero or one [0..1] versionNumber (CONF:5264, R2.1=CONF:1198-5264)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_typeId_2_13_3-error_mdht" see="#p-OperativeNote_1A_OperativeNote_typeId_2_13_3-error_mdht" name="p-OperativeNote_1A_OperativeNote_typeId_2_13_3-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.typeId.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsTypeId
		-->
	<assert test="cda:typeId">Error: OperativeNote - 2.13.3 typeId
		Conformance: SHALL contain exactly one [1..1] typeId (CONF:5361, R2.1=CONF:1198-5361)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_authorization_2_13_24-error_mdht" see="#p-OperativeNote_1A_OperativeNote_authorization_2_13_24-error_mdht" name="p-OperativeNote_1A_OperativeNote_authorization_2_13_24-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.authorization->select(authorization : cda::Authorization | not authorization.oclIsUndefined() and authorization.oclIsKindOf(cda::Authorization))->size() >= 0
			Constraint name: GeneralHeaderConstraintsAuthorization
		-->
	<assert test="count(cda:authorization) &gt;= 0">Error: OperativeNote - 2.13.24 authorization
		Conformance: MAY contain zero or more [0..*] authorization (CONF:16792)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_informant_2_13_20-error_mdht" see="#p-OperativeNote_1A_OperativeNote_informant_2_13_20-error_mdht" name="p-OperativeNote_1A_OperativeNote_informant_2_13_20-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.informant->select(informant : cda::Informant12 | not informant.oclIsUndefined() and informant.oclIsKindOf(cda::Informant12))->size() >= 0
			Constraint name: GeneralHeaderConstraintsInformant
		-->
	<assert test="count(cda:informant) &gt;= 0">Error: OperativeNote - 2.13.20 informant
		Conformance: MAY contain zero or more [0..*] informant (CONF:8001)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_inFulfillmentOf_2_13_22-error_mdht" see="#p-OperativeNote_1A_OperativeNote_inFulfillmentOf_2_13_22-error_mdht" name="p-OperativeNote_1A_OperativeNote_inFulfillmentOf_2_13_22-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.inFulfillmentOf->select(inFulfillmentOf : cda::InFulfillmentOf | not inFulfillmentOf.oclIsUndefined() and inFulfillmentOf.oclIsKindOf(cda::InFulfillmentOf))->size() >= 0
			Constraint name: GeneralHeaderConstraintsInFulfillmentOf
		-->
	<assert test="count(cda:inFulfillmentOf) &gt;= 0">Error: OperativeNote - 2.13.22 inFulfillmentOf
		Conformance: MAY contain zero or more [0..*] inFulfillmentOf (CONF:9952)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_recordTarget_2_13_12-error_mdht" see="#p-OperativeNote_1A_OperativeNote_recordTarget_2_13_12-error_mdht" name="p-OperativeNote_1A_OperativeNote_recordTarget_2_13_12-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.recordTarget->exists(recordTarget : cda::RecordTarget | not recordTarget.oclIsUndefined() and recordTarget.oclIsKindOf(cda::RecordTarget))
			Constraint name: GeneralHeaderConstraintsRecordTarget
		-->
	<assert test="cda:recordTarget">Error: OperativeNote - 2.13.12 recordTarget
		Conformance: SHALL contain at least one [1..*] recordTarget (CONF:5266)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_languageCode_2_13_9-error_mdht" see="#p-OperativeNote_1A_OperativeNote_languageCode_2_13_9-error_mdht" name="p-OperativeNote_1A_OperativeNote_languageCode_2_13_9-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.languageCode.oclIsUndefined() and self.languageCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.languageCode.oclAsType(datatypes::CS) in 
not value.code.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsLanguageCode
		-->
	<assert test="cda:languageCode and cda:languageCode[@code]">Error: OperativeNote - 2.13.9 languageCode
		Conformance: SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5372, R2.1=CONF:1198-5372)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.languageCode.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsLanguageCodeP
		-->
	<assert test="cda:languageCode">Error: OperativeNote - 2.13.9 languageCode
		Conformance: SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5372, R2.1=CONF:1198-5372)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_realmCode_2_13_2-error_mdht" see="#p-OperativeNote_1A_OperativeNote_realmCode_2_13_2-error_mdht" name="p-OperativeNote_1A_OperativeNote_realmCode_2_13_2-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: true
			Constraint name: GeneralHeaderConstraintsRealmCodeP
		-->
	<assert test="true()">Error: OperativeNote - 2.13.2 realmCode
		Conformance: SHALL contain exactly one [1..1] realmCode/@code=&quot;US&quot;  (CONF:16791)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.realmCode->size() = 1 and self.realmCode->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = element.oclAsType(datatypes::CS) in 
value.code = 'US')
			Constraint name: GeneralHeaderConstraintsRealmCode
		-->
	<assert test="count(cda:realmCode) = 1 and not(cda:realmCode[not(. and @code = 'US')])">Error: OperativeNote - 2.13.2 realmCode
		Conformance: SHALL contain exactly one [1..1] realmCode/@code=&quot;US&quot;  (CONF:16791)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_custodian_2_13_16-error_mdht" see="#p-OperativeNote_1A_OperativeNote_custodian_2_13_16-error_mdht" name="p-OperativeNote_1A_OperativeNote_custodian_2_13_16-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.custodian->one(custodian : cda::Custodian | not custodian.oclIsUndefined() and custodian.oclIsKindOf(cda::Custodian))
			Constraint name: GeneralHeaderConstraintsCustodian
		-->
	<assert test="count(cda:custodian)=1">Error: OperativeNote - 2.13.16 custodian
		Conformance: SHALL contain exactly one [1..1] custodian (CONF:5519)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_authenticator_2_13_19-error_mdht" see="#p-OperativeNote_1A_OperativeNote_authenticator_2_13_19-error_mdht" name="p-OperativeNote_1A_OperativeNote_authenticator_2_13_19-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.authenticator->select(authenticator : cda::Authenticator | not authenticator.oclIsUndefined() and authenticator.oclIsKindOf(cda::Authenticator))->size() >= 0
			Constraint name: GeneralHeaderConstraintsAuthenticator
		-->
	<assert test="count(cda:authenticator) &gt;= 0">Error: OperativeNote - 2.13.19 authenticator
		Conformance: MAY contain zero or more [0..*] authenticator (CONF:5607)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_informationRecipient_2_13_17-error_mdht" see="#p-OperativeNote_1A_OperativeNote_informationRecipient_2_13_17-error_mdht" name="p-OperativeNote_1A_OperativeNote_informationRecipient_2_13_17-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.informationRecipient->select(informationRecipient : cda::InformationRecipient | not informationRecipient.oclIsUndefined() and informationRecipient.oclIsKindOf(cda::InformationRecipient))->size() >= 0
			Constraint name: GeneralHeaderConstraintsInformationRecipient
		-->
	<assert test="count(cda:informationRecipient) &gt;= 0">Error: OperativeNote - 2.13.17 informationRecipient
		Conformance: MAY contain zero or more [0..*] informationRecipient (CONF:5565)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_confidentialityCode_2_13_8-error_mdht" see="#p-OperativeNote_1A_OperativeNote_confidentialityCode_2_13_8-error_mdht" name="p-OperativeNote_1A_OperativeNote_confidentialityCode_2_13_8-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.confidentialityCode.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsConfidentialityCodeP
		-->
	<assert test="cda:confidentialityCode">Error: OperativeNote - 2.13.8 confidentialityCode
		Conformance: SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind 2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:5259, R2.1=CONF:1198-5259)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.confidentialityCode.oclIsUndefined() and self.confidentialityCode.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.confidentialityCode.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.5.25' and (value.code = 'N' or value.code = 'R' or value.code = 'V')
			Constraint name: GeneralHeaderConstraintsConfidentialityCode
		-->
	<assert test="cda:confidentialityCode and cda:confidentialityCode[@codeSystem = '2.16.840.1.113883.5.25' and (@code = 'N' or @code = 'R' or @code = 'V')]">Error: OperativeNote - 2.13.8 confidentialityCode
		Conformance: SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind 2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:5259, R2.1=CONF:1198-5259)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_id_2_13_4-error_mdht" see="#p-OperativeNote_1A_OperativeNote_id_2_13_4-error_mdht" name="p-OperativeNote_1A_OperativeNote_id_2_13_4-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.id.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsId
		-->
	<assert test="cda:id">Error: OperativeNote - 2.13.4 id
		Conformance: SHALL contain exactly one [1..1] id (CONF:5363, R2.1=CONF:1198-5363)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_setId_2_13_10-error_mdht" see="#p-OperativeNote_1A_OperativeNote_setId_2_13_10-error_mdht" name="p-OperativeNote_1A_OperativeNote_setId_2_13_10-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: ((not self.setId.oclIsUndefined()) and self.setId.isNullFlavorUndefined()) implies (not self.setId.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsSetId
		-->
	<assert test="not(cda:setId and not(cda:setId/@nullFlavor)) or cda:setId">Error: OperativeNote - 2.13.10 setId
		Conformance: MAY contain zero or one [0..1] setId (CONF:5261, R2.1=CONF:1198-5261)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_2_OperativeNote_component_2_13_5-error_mdht" see="#p-OperativeNote_2_OperativeNote_component_2_13_5-error_mdht" name="p-OperativeNote_2_OperativeNote_component_2_13_5-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.component->one(component : cda::Component2 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component))
			Constraint name: OperativeNoteComponent
		-->
	<assert test="count(cda:component)=1">Error: OperativeNote - 2.13.5 component
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_author_2_13_14-error_mdht" see="#p-OperativeNote_1A_OperativeNote_author_2_13_14-error_mdht" name="p-OperativeNote_1A_OperativeNote_author_2_13_14-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.author->exists(author : cda::Author | not author.oclIsUndefined() and author.oclIsKindOf(cda::Author))
			Constraint name: GeneralHeaderConstraintsAuthor
		-->
	<assert test="cda:author">Error: OperativeNote - 2.13.14 author
		Conformance: SHALL contain at least one [1..*] author (CONF:5444)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_legalAuthenticator_2_13_18-error_mdht" see="#p-OperativeNote_1A_OperativeNote_legalAuthenticator_2_13_18-error_mdht" name="p-OperativeNote_1A_OperativeNote_legalAuthenticator_2_13_18-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.legalAuthenticator->select(legalAuthenticator : cda::LegalAuthenticator | not legalAuthenticator.oclIsUndefined() and legalAuthenticator.oclIsKindOf(cda::LegalAuthenticator))->size() <= 1
			Constraint name: GeneralHeaderConstraintsLegalAuthenticator
		-->
	<assert test="count(cda:legalAuthenticator) &lt;= 1">Error: OperativeNote - 2.13.18 legalAuthenticator
		Conformance: SHOULD contain zero or one [0..1] legalAuthenticator (CONF:5579)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_dataEnterer_2_13_15-error_mdht" see="#p-OperativeNote_1A_OperativeNote_dataEnterer_2_13_15-error_mdht" name="p-OperativeNote_1A_OperativeNote_dataEnterer_2_13_15-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.dataEnterer->select(dataEnterer : cda::DataEnterer | not dataEnterer.oclIsUndefined() and dataEnterer.oclIsKindOf(cda::DataEnterer))->size() <= 1
			Constraint name: GeneralHeaderConstraintsDataEnterer
		-->
	<assert test="count(cda:dataEnterer) &lt;= 1">Error: OperativeNote - 2.13.15 dataEnterer
		Conformance: MAY contain zero or one [0..1] dataEnterer (CONF:5441)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_title_2_13_6-error_mdht" see="#p-OperativeNote_1A_OperativeNote_title_2_13_6-error_mdht" name="p-OperativeNote_1A_OperativeNote_title_2_13_6-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 2.13.6 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:5254)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_2_OperativeNote_componentOf_2_13_13-error_mdht" see="#p-OperativeNote_2_OperativeNote_componentOf_2_13_13-error_mdht" name="p-OperativeNote_2_OperativeNote_componentOf_2_13_13-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.componentOf->select(componentOf : cda::Component1 | not componentOf.oclIsUndefined() and componentOf.oclIsKindOf(cda::Component1))->size() <= 1
			Constraint name: GeneralHeaderConstraintsComponentOf
		-->
	<assert test="count(cda:componentOf) &lt;= 1">Error: OperativeNote - 2.13.13 componentOf
		Conformance: MAY contain zero or one [0..1] componentOf (CONF:9955)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_supportParticipant_2_13_21-error_mdht" see="#p-OperativeNote_1A_OperativeNote_supportParticipant_2_13_21-error_mdht" name="p-OperativeNote_1A_OperativeNote_supportParticipant_2_13_21-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.participant->select(participant : cda::Participant1 | not participant.oclIsUndefined() and participant.oclIsKindOf(cda::Participant1))->size() >= 0
			Constraint name: GeneralHeaderConstraintsSupportParticipant
		-->
	<assert test="count(cda:participant) &gt;= 0">Error: OperativeNote - 2.13.21 supportParticipant
		Conformance: MAY contain zero or more [0..*] participant (CONF:10003)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNote: 2.16.840.1.113883.10.20.22.1.7 -->

<pattern id="p-OperativeNote_1A_OperativeNote_templateId_2_13_1-error_mdht" see="#p-OperativeNote_1A_OperativeNote_templateId_2_13_1-error_mdht" name="p-OperativeNote_1A_OperativeNote_templateId_2_13_1-error_mdht">
		<!--
			UML path: /OperativeNote
			UML root path: /OperativeNote
		-->
	<rule context="/cda:ClinicalDocument">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.1.7')
			Constraint name: GeneralHeaderConstraintsTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.1.7'">Error: OperativeNote - 2.13.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8483, CONF:10048 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.1.7&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- DocumentationOf -->

<pattern id="p-OperativeNote_1A_DocumentationOf_serviceEvent_2_13_4_i-error_mdht" see="#p-OperativeNote_1A_DocumentationOf_serviceEvent_2_13_4_i-error_mdht" name="p-OperativeNote_1A_DocumentationOf_serviceEvent_2_13_4_i-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf
			UML root path: /OperativeNote/documentationOf
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf">
		<!--
			OCL: self.serviceEvent->one(serviceEvent : cda::ServiceEvent | not serviceEvent.oclIsUndefined() and serviceEvent.oclIsKindOf(consol::OperativeNote::DocumentationOf::ServiceEvent))
			Constraint name: OperativeNoteDocumentationOfServiceEvent
		-->
	<assert test="count(cda:serviceEvent)=1">Error: OperativeNote - 2.13.4.i serviceEvent
		Conformance: SHALL contain exactly one [1..1] serviceEvent (CONF:8493)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent -->

<pattern id="p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeNoHighIfWidth_2_13_4_i_g-error_mdht" see="#p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeNoHighIfWidth_2_13_4_i_g-error_mdht" name="p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeNoHighIfWidth_2_13_4_i_g-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf/serviceEvent
			UML root path: /OperativeNote/documentationOf/serviceEvent
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: not self.effectiveTime.width.oclIsUndefined() xor not self.effectiveTime.high.oclIsUndefined()
			Constraint name: OperativeNoteDocumentationOfServiceEventEffectiveTimeNoHighIfWidth
		-->
	<assert test="cda:effectiveTime/cda:width or cda:effectiveTime/cda:high">Error: OperativeNote - 2.13.4.i.g OperativeNoteDocumentationOfServiceEventEffectiveTimeNoHighIfWidth
		Conformance: When only the date and the length of the procedure are known a width element SHALL be present and the serviceEvent/effectiveTime/high SHALL not be present. (CONF:10060)
		Analysis: When only the date and the length of the procedure are known a width element SHALL be present and the serviceEvent/effectiveTime/high SHALL not be present.
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent -->

<pattern id="p-OperativeNote_1A_ServiceEvent_code_2_13_4_i_a-error_mdht" see="#p-OperativeNote_1A_ServiceEvent_code_2_13_4_i_a-error_mdht" name="p-OperativeNote_1A_ServiceEvent_code_2_13_4_i_a-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf/serviceEvent
			UML root path: /OperativeNote/documentationOf/serviceEvent
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: OperativeNoteDocumentationOfServiceEventCode
		-->
	<assert test="cda:code">Error: OperativeNote - 2.13.4.i.a code
		Conformance: SHALL contain exactly one [1..1] code (i., CONF:8487)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent -->

<pattern id="p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeHasLow_2_13_4_i_e-error_mdht" see="#p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeHasLow_2_13_4_i_e-error_mdht" name="p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeHasLow_2_13_4_i_e-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf/serviceEvent
			UML root path: /OperativeNote/documentationOf/serviceEvent
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: not self.effectiveTime.low.oclIsUndefined()
			Constraint name: OperativeNoteDocumentationOfServiceEventEffectiveTimeHasLow
		-->
	<assert test="cda:effectiveTime/cda:low">Error: OperativeNote - 2.13.4.i.e OperativeNoteDocumentationOfServiceEventEffectiveTimeHasLow
		Conformance: The serviceEvent/effectiveTime SHALL be present with effectiveTime/low (CONF:8488)
		Analysis: The serviceEvent/effectiveTime SHALL be present with effectiveTime/low
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent -->

<pattern id="p-OperativeNote_1A_ServiceEvent_primaryPerformer_2_13_4_i_c-error_mdht" see="#p-OperativeNote_1A_ServiceEvent_primaryPerformer_2_13_4_i_c-error_mdht" name="p-OperativeNote_1A_ServiceEvent_primaryPerformer_2_13_4_i_c-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf/serviceEvent
			UML root path: /OperativeNote/documentationOf/serviceEvent
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: self.performer->select(performer : cda::Performer1 | not performer.oclIsUndefined() and performer.oclIsKindOf(cda::Performer1))->select(typeCode = vocab::x_ServiceEventPerformer::PPRF)->size() = 1
			Constraint name: OperativeNoteDocumentationOfServiceEventPrimaryPerformer
		-->
	<assert test="count(cda:performer[@typeCode = 'PPRF']) = 1">Error: OperativeNote - 2.13.4.i.c primaryPerformer
		Conformance: SHALL contain exactly one [1..1] performer (CONF:8489)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent -->

<pattern id="p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeHasHighWhenNoWidth_2_13_4_i_f-error_mdht" see="#p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeHasHighWhenNoWidth_2_13_4_i_f-error_mdht" name="p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeHasHighWhenNoWidth_2_13_4_i_f-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf/serviceEvent
			UML root path: /OperativeNote/documentationOf/serviceEvent
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: not self.effectiveTime.width.oclIsUndefined() xor not self.effectiveTime.high.oclIsUndefined()
			Constraint name: OperativeNoteDocumentationOfServiceEventEffectiveTimeHasHighWhenNoWidth
		-->
	<assert test="cda:effectiveTime/cda:width or cda:effectiveTime/cda:high">Error: OperativeNote - 2.13.4.i.f OperativeNoteDocumentationOfServiceEventEffectiveTimeHasHighWhenNoWidth
		Conformance: If a width is not present, the serviceEvent/effectiveTime SHALL include effectiveTime/high. (CONF:10058)
		Analysis: If a width is not present, the serviceEvent/effectiveTime SHALL include effectiveTime/high.
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent -->

<pattern id="p-OperativeNote_1A_ServiceEvent_effectiveTime_2_13_4_i_b-error_mdht" see="#p-OperativeNote_1A_ServiceEvent_effectiveTime_2_13_4_i_b-error_mdht" name="p-OperativeNote_1A_ServiceEvent_effectiveTime_2_13_4_i_b-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf/serviceEvent
			UML root path: /OperativeNote/documentationOf/serviceEvent
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: not self.effectiveTime.oclIsUndefined()
			Constraint name: OperativeNoteDocumentationOfServiceEventEffectiveTime
		-->
	<assert test="cda:effectiveTime">Error: OperativeNote - 2.13.4.i.b effectiveTime
		Conformance: SHALL contain exactly one [1..1] effectiveTime (CONF:8494)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceEvent -->

<pattern id="p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventProcedureCodes_2_13_4_i_d-error_mdht" see="#p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventProcedureCodes_2_13_4_i_d-error_mdht" name="p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventProcedureCodes_2_13_4_i_d-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf/serviceEvent
			UML root path: /OperativeNote/documentationOf/serviceEvent
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">
		<!--
			OCL: code.codeSystem = '2.16.840.1.113883.6.104' or code.codeSystem = '2.16.840.1.113883.6.12' or code.codeSystem = '2.16.840.1.113883.6.96'
			Constraint name: OperativeNoteDocumentationOfServiceEventProcedureCodes
		-->
	<assert test="cda:code/@codeSystem = '2.16.840.1.113883.6.104' or cda:code/@codeSystem = '2.16.840.1.113883.6.12' or cda:code/@codeSystem = '2.16.840.1.113883.6.96'">Error: OperativeNote - 2.13.4.i.d OperativeNoteDocumentationOfServiceEventProcedureCodes
		Conformance: i. The value of Clinical Document /documentationOf/serviceEvent/code SHALL be from ICD9 CM Procedures (CodeSystem 2.16.840.1.113883.6.104), CPT-4 (CodeSystem 2.16.840.1.113883.6.12), or values descending from 71388002 (Procedure) from the SNOMED CT (CodeSystem 2.16.840.1.113883.6.96) ValueSet Procedure 2.16.840.1.113883.3.88.12.80.28 DYNAMIC. (CONF:8487)
		Analysis: i. The value of Clinical Document /documentationOf/serviceEvent/code SHALL be from ICD9 CM Procedures (CodeSystem 2.16.840.1.113883.6.104), CPT-4 (CodeSystem 2.16.840.1.113883.6.12), or values descending from 71388002 (Procedure) from the SNOMED CT (CodeSystem 2.16.840.1.113883.6.96) ValueSet Procedure 2.16.840.1.113883.3.88.12.80.28 DYNAMIC.
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PrimaryPerformer -->

<pattern id="p-OperativeNote_1A_PrimaryPerformer_typeCode_2_13_4_i_c_1-error_mdht" see="#p-OperativeNote_1A_PrimaryPerformer_typeCode_2_13_4_i_c_1-error_mdht" name="p-OperativeNote_1A_PrimaryPerformer_typeCode_2_13_4_i_c_1-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf/serviceEvent/primaryPerformer
			UML root path: /OperativeNote/documentationOf/serviceEvent/primaryPerformer
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer">
		<!--
			OCL: self.typeCode=vocab::x_ServiceEventPerformer::PPRF
			Constraint name: OperativeNoteDocumentationOfServiceEventPrimaryPerformerTypeCode
		-->
	<assert test="@typeCode = 'PPRF'">Error: OperativeNote - 2.13.4.i.c.1 typeCode
		Conformance: SHALL contain exactly one [1..1] @typeCode=&quot;PPRF&quot;  (CONF:8495)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PrimaryPerformer -->

<pattern id="p-OperativeNote_1A_PrimaryPerformer_assignedEntity_2_13_4_i_c_2-error_mdht" see="#p-OperativeNote_1A_PrimaryPerformer_assignedEntity_2_13_4_i_c_2-error_mdht" name="p-OperativeNote_1A_PrimaryPerformer_assignedEntity_2_13_4_i_c_2-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf/serviceEvent/primaryPerformer
			UML root path: /OperativeNote/documentationOf/serviceEvent/primaryPerformer
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer">
		<!--
			OCL: self.assignedEntity->one(assignedEntity : cda::AssignedEntity | not assignedEntity.oclIsUndefined() and assignedEntity.oclIsKindOf(consol::OperativeNote::DocumentationOf::ServiceEvent::PrimaryPerformer::AssignedEntity))
			Constraint name: OperativeNoteDocumentationOfServiceEventPrimaryPerformerAssignedEntity
		-->
	<assert test="count(cda:assignedEntity)=1">Error: OperativeNote - 2.13.4.i.c.2 assignedEntity
		Conformance: SHALL contain exactly one [1..1] assignedEntity (CONF:10917)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssignedEntity -->

<pattern id="p-OperativeNote_1A_AssignedEntity_code_2_13_4_i_c_2_i-error_mdht" see="#p-OperativeNote_1A_AssignedEntity_code_2_13_4_i_c_2_i-error_mdht" name="p-OperativeNote_1A_AssignedEntity_code_2_13_4_i_c_2_i-error_mdht">
		<!--
			UML path: /OperativeNote/documentationOf/serviceEvent/primaryPerformer/assignedEntity
			UML root path: /OperativeNote/documentationOf/serviceEvent/primaryPerformer/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.101' and not value.code.oclIsUndefined()
			Constraint name: OperativeNoteDocumentationOfServiceEventPrimaryPerformerAssignedEntityCode
		-->
	<assert test="cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.101' and @code]">Error: OperativeNote - 2.13.4.i.c.2.i code
		Conformance: SHALL contain exactly one [1..1] code (CONF:8490, CONF:8491), which SHALL be selected from ValueSet ProviderType 2.16.840.1.113883.3.88.12.3221.4 DYNAMIC
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: OperativeNoteDocumentationOfServiceEventPrimaryPerformerAssignedEntityCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 2.13.4.i.c.2.i code
		Conformance: SHALL contain exactly one [1..1] code (CONF:8490, CONF:8491), which SHALL be selected from ValueSet ProviderType 2.16.840.1.113883.3.88.12.3221.4 DYNAMIC
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_structuredBody_2_13_5_i-error_mdht" see="#p-OperativeNote_2_Component_structuredBody_2_13_5_i-error_mdht" name="p-OperativeNote_2_Component_structuredBody_2_13_5_i-error_mdht">
		<!--
			UML path: /OperativeNote/component
			UML root path: /OperativeNote/component
		-->
	<rule context="/cda:ClinicalDocument/cda:component">
		<!--
			OCL: self.structuredBody->one(structuredBody : cda::StructuredBody | not structuredBody.oclIsUndefined() and structuredBody.oclIsKindOf(consol::OperativeNote::Component::StructuredBody))
			Constraint name: OperativeNoteComponentStructuredBody
		-->
	<assert test="count(cda:structuredBody)=1">Error: OperativeNote - 2.13.5.i structuredBody
		Conformance: SHALL contain exactly one [1..1] structuredBody
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_procedureFindingsSection_2_13_5_i_f-error_mdht" see="#p-OperativeNote_2_StructuredBody_procedureFindingsSection_2_13_5_i_f-error_mdht" name="p-OperativeNote_2_StructuredBody_procedureFindingsSection_2_13_5_i_f-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyProcedureFindingsSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.f procedureFindingsSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_operativeNoteSurgicalProcedureSection_2_13_5_i_k-error_mdht" see="#p-OperativeNote_2_StructuredBody_operativeNoteSurgicalProcedureSection_2_13_5_i_k-error_mdht" name="p-OperativeNote_2_StructuredBody_operativeNoteSurgicalProcedureSection_2_13_5_i_k-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyOperativeNoteSurgicalProcedureSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.k operativeNoteSurgicalProcedureSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_procedureDispositionSection_2_13_5_i_n-error_mdht" see="#p-OperativeNote_2_StructuredBody_procedureDispositionSection_2_13_5_i_n-error_mdht" name="p-OperativeNote_2_StructuredBody_procedureDispositionSection_2_13_5_i_n-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyProcedureDispositionSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.n procedureDispositionSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_procedureImplantsSection_2_13_5_i_i-error_mdht" see="#p-OperativeNote_2_StructuredBody_procedureImplantsSection_2_13_5_i_i-error_mdht" name="p-OperativeNote_2_StructuredBody_procedureImplantsSection_2_13_5_i_i-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyProcedureImplantsSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.i procedureImplantsSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_anesthesiaSection_2_13_5_i_a-error_mdht" see="#p-OperativeNote_2_StructuredBody_anesthesiaSection_2_13_5_i_a-error_mdht" name="p-OperativeNote_2_StructuredBody_anesthesiaSection_2_13_5_i_a-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyAnesthesiaSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.a anesthesiaSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_procedureIndicationsSection_2_13_5_i_o-error_mdht" see="#p-OperativeNote_2_StructuredBody_procedureIndicationsSection_2_13_5_i_o-error_mdht" name="p-OperativeNote_2_StructuredBody_procedureIndicationsSection_2_13_5_i_o-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyProcedureIndicationsSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.o procedureIndicationsSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_procedureEstimatedBloodLossSection_2_13_5_i_e-error_mdht" see="#p-OperativeNote_2_StructuredBody_procedureEstimatedBloodLossSection_2_13_5_i_e-error_mdht" name="p-OperativeNote_2_StructuredBody_procedureEstimatedBloodLossSection_2_13_5_i_e-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyProcedureEstimatedBloodLossSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.e procedureEstimatedBloodLossSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_procedureDescriptionSection_2_13_5_i_h-error_mdht" see="#p-OperativeNote_2_StructuredBody_procedureDescriptionSection_2_13_5_i_h-error_mdht" name="p-OperativeNote_2_StructuredBody_procedureDescriptionSection_2_13_5_i_h-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyProcedureDescriptionSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.h procedureDescriptionSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_complicationsSection_2_13_5_i_b-error_mdht" see="#p-OperativeNote_2_StructuredBody_complicationsSection_2_13_5_i_b-error_mdht" name="p-OperativeNote_2_StructuredBody_complicationsSection_2_13_5_i_b-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyComplicationsSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.b complicationsSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_surgicalDrainsSection_2_13_5_i_p-error_mdht" see="#p-OperativeNote_2_StructuredBody_surgicalDrainsSection_2_13_5_i_p-error_mdht" name="p-OperativeNote_2_StructuredBody_surgicalDrainsSection_2_13_5_i_p-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodySurgicalDrainsSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.p surgicalDrainsSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_preoperativeDiagnosisSection_2_13_5_i_d-error_mdht" see="#p-OperativeNote_2_StructuredBody_preoperativeDiagnosisSection_2_13_5_i_d-error_mdht" name="p-OperativeNote_2_StructuredBody_preoperativeDiagnosisSection_2_13_5_i_d-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyPreoperativeDiagnosisSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.d preoperativeDiagnosisSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_postoperativeDiagnosisSection_2_13_5_i_c-error_mdht" see="#p-OperativeNote_2_StructuredBody_postoperativeDiagnosisSection_2_13_5_i_c-error_mdht" name="p-OperativeNote_2_StructuredBody_postoperativeDiagnosisSection_2_13_5_i_c-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyPostoperativeDiagnosisSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.c postoperativeDiagnosisSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_planOfCareSection_2_13_5_i_l-error_mdht" see="#p-OperativeNote_2_StructuredBody_planOfCareSection_2_13_5_i_l-error_mdht" name="p-OperativeNote_2_StructuredBody_planOfCareSection_2_13_5_i_l-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyPlanOfCareSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.l planOfCareSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_plannedProcedureSection_2_13_5_i_m-error_mdht" see="#p-OperativeNote_2_StructuredBody_plannedProcedureSection_2_13_5_i_m-error_mdht" name="p-OperativeNote_2_StructuredBody_plannedProcedureSection_2_13_5_i_m-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyPlannedProcedureSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.m plannedProcedureSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_procedureSpecimensTakenSection_2_13_5_i_g-error_mdht" see="#p-OperativeNote_2_StructuredBody_procedureSpecimensTakenSection_2_13_5_i_g-error_mdht" name="p-OperativeNote_2_StructuredBody_procedureSpecimensTakenSection_2_13_5_i_g-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyProcedureSpecimensTakenSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.g procedureSpecimensTakenSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- StructuredBody -->

<pattern id="p-OperativeNote_2_StructuredBody_operativeNoteFluidSection_2_13_5_i_j-error_mdht" see="#p-OperativeNote_2_StructuredBody_operativeNoteFluidSection_2_13_5_i_j-error_mdht" name="p-OperativeNote_2_StructuredBody_operativeNoteFluidSection_2_13_5_i_j-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody
			UML root path: /OperativeNote/component/structuredBody
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">
		<!--
			OCL: self.component->one(component : cda::Component3 | not component.oclIsUndefined() and component.oclIsKindOf(consol::OperativeNote::Component::StructuredBody::Component))
			Constraint name: OperativeNoteComponentStructuredBodyOperativeNoteFluidSection
		-->
	<assert test="count(cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.j operativeNoteFluidSection
		Conformance: SHALL contain exactly one [1..1] component
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_anesthesiaSection_2_13_5_i_a_1-error_mdht" see="#p-OperativeNote_2_Component_anesthesiaSection_2_13_5_i_a_1-error_mdht" name="p-OperativeNote_2_Component_anesthesiaSection_2_13_5_i_a_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/anesthesiaSection
			UML root path: /OperativeNote/component/structuredBody/anesthesiaSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">
		<!--
			OCL: self.section->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::AnesthesiaSection))
			Constraint name: OperativeNoteComponentStructuredBodyComponentAnesthesiaSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'])=1">Error: OperativeNote - 2.13.5.i.a.1 anesthesiaSection
		Conformance: SHALL contain exactly one [1..1] section (CONF:9883)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AnesthesiaSection: 2.16.840.1.113883.10.20.22.2.25 -->

<pattern id="p-OperativeNote_2_AnesthesiaSection_title_3_12_3-error_mdht" see="#p-OperativeNote_2_AnesthesiaSection_title_3_12_3-error_mdht" name="p-OperativeNote_2_AnesthesiaSection_title_3_12_3-error_mdht">
		<!--
			UML path: /AnesthesiaSection
			UML root path: /OperativeNote/component/structuredBody/anesthesiaSection/anesthesiaSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: AnesthesiaSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.12.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8068, R2.0=CONF:1098-8068)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AnesthesiaSection: 2.16.840.1.113883.10.20.22.2.25 -->

<pattern id="p-OperativeNote_3A_AnesthesiaSection_entry_3_11_6-error_mdht" see="#p-OperativeNote_3A_AnesthesiaSection_entry_3_11_6-error_mdht" name="p-OperativeNote_3A_AnesthesiaSection_entry_3_11_6-error_mdht">
		<!--
			UML path: /AnesthesiaSection
			UML root path: /OperativeNote/component/structuredBody/anesthesiaSection/anesthesiaSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::AnesthesiaSection::MedicationActivityEntry))
			Constraint name: AnesthesiaSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.11.6 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AnesthesiaSection: 2.16.840.1.113883.10.20.22.2.25 -->

<pattern id="p-OperativeNote_2_AnesthesiaSection_templateId_3_11_1-error_mdht" see="#p-OperativeNote_2_AnesthesiaSection_templateId_3_11_1-error_mdht" name="p-OperativeNote_2_AnesthesiaSection_templateId_3_11_1-error_mdht">
		<!--
			UML path: /AnesthesiaSection
			UML root path: /OperativeNote/component/structuredBody/anesthesiaSection/anesthesiaSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.25')
			Constraint name: AnesthesiaSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25'">Error: OperativeNote - 3.11.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8066, CONF:10380 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.25&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AnesthesiaSection: 2.16.840.1.113883.10.20.22.2.25 -->

<pattern id="p-OperativeNote_2_AnesthesiaSection_text_3_12_4-error_mdht" see="#p-OperativeNote_2_AnesthesiaSection_text_3_12_4-error_mdht" name="p-OperativeNote_2_AnesthesiaSection_text_3_12_4-error_mdht">
		<!--
			UML path: /AnesthesiaSection
			UML root path: /OperativeNote/component/structuredBody/anesthesiaSection/anesthesiaSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: AnesthesiaSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.12.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8069, R2.0=CONF:1098-8069)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AnesthesiaSection: 2.16.840.1.113883.10.20.22.2.25 -->

<pattern id="p-OperativeNote_3A_AnesthesiaSection_entry_3_11_5-error_mdht" see="#p-OperativeNote_3A_AnesthesiaSection_entry_3_11_5-error_mdht" name="p-OperativeNote_3A_AnesthesiaSection_entry_3_11_5-error_mdht">
		<!--
			UML path: /AnesthesiaSection
			UML root path: /OperativeNote/component/structuredBody/anesthesiaSection/anesthesiaSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::AnesthesiaSection::ProcedureActivityProcedureEntry))
			Constraint name: AnesthesiaSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.11.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AnesthesiaSection: 2.16.840.1.113883.10.20.22.2.25 -->

<pattern id="p-OperativeNote_2_AnesthesiaSection_code_3_11_2-error_mdht" see="#p-OperativeNote_2_AnesthesiaSection_code_3_11_2-error_mdht" name="p-OperativeNote_2_AnesthesiaSection_code_3_11_2-error_mdht">
		<!--
			UML path: /AnesthesiaSection
			UML root path: /OperativeNote/component/structuredBody/anesthesiaSection/anesthesiaSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '59774-0' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: AnesthesiaSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '59774-0' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.11.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15351)/@code=&quot;59774-0&quot;  (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15352)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: AnesthesiaSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.11.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15351)/@code=&quot;59774-0&quot;  (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15352)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedureEntry -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedureEntry_procedureActivityProcedure_3_11_5_i-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedureEntry_procedureActivityProcedure_3_11_5_i-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedureEntry_procedureActivityProcedure_3_11_5_i-error_mdht">
		<!--
			UML path: /AnesthesiaSection/entry
			UML root path: /OperativeNote/component/structuredBody/anesthesiaSection/anesthesiaSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']/cda:entry">
		<!--
			OCL: self.procedure->select(procedure : cda::Procedure | not procedure.oclIsUndefined() and procedure.oclIsKindOf(consol::ProcedureActivityProcedure))->size() >= 0
			Constraint name: AnesthesiaSectionProcedureActivityProcedureEntryProcedureActivityProcedure
		-->
	<assert test="count(cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']) &gt;= 0">Error: OperativeNote - 3.11.5.i procedureActivityProcedure
		Conformance: MAY contain zero or more [0..*] procedure (CONF:8092)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_templateId_4_121_1-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_templateId_4_121_1-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_templateId_4_121_1-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.14')
			Constraint name: ProcedureActivityProcedureTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14'">Error: OperativeNote - 4.121.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7654 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.14&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_performer_4_121_13-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_performer_4_121_13-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_performer_4_121_13-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.performer->select(performer : cda::Performer2 | not performer.oclIsUndefined() and performer.oclIsKindOf(cda::Performer2))->size() >= 0
			Constraint name: ProcedureActivityProcedurePerformer
		-->
	<assert test="count(cda:performer) &gt;= 0">Error: OperativeNote - 4.121.13 performer
		Conformance: SHOULD contain zero or more [0..*] performer (CONF:7718)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_17-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_17-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_17-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::ProcedureActivityProcedure::InstructionsEntryRelationship))
			Constraint name: ProcedureActivityProcedureEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: OperativeNote - 4.121.17 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_id_4_122_4-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_id_4_122_4-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_id_4_122_4-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: ProcedureActivityProcedureId
		-->
	<assert test="cda:id">Error: OperativeNote - 4.122.4 id
		Conformance: SHALL contain at least one [1..*] id (CONF:7655, R2.0=CONF:1098-7655)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_moodCode_4_121_3-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_moodCode_4_121_3-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_moodCode_4_121_3-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: true
			Constraint name: ProcedureActivityProcedureMoodCodeP
		-->
	<assert test="true()">Error: OperativeNote - 4.121.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2014-09-01 (CONF:7653)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.moodCode.oclIsUndefined() and self.moodCode.oclIsKindOf(vocab::x_DocumentProcedureMood) and 
let value : vocab::x_DocumentProcedureMood = self.moodCode.oclAsType(vocab::x_DocumentProcedureMood) in 
value = vocab::x_DocumentProcedureMood::EVN or value = vocab::x_DocumentProcedureMood::INT
			Constraint name: ProcedureActivityProcedureMoodCode
		-->
	<assert test="@moodCode and @moodCode[. = 'EVN' or . = 'INT']">Error: OperativeNote - 4.121.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt 2.16.840.1.113883.11.20.9.18 STATIC 2014-09-01 (CONF:7653)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_targetSiteCode_4_121_10-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_targetSiteCode_4_121_10-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_targetSiteCode_4_121_10-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: ((not self.targetSiteCode->isEmpty()) and self.targetSiteCode->exists(element | element.isNullFlavorUndefined())) implies (not self.targetSiteCode->isEmpty())
			Constraint name: ProcedureActivityProcedureTargetSiteCodeP
		-->
	<assert test="not(cda:targetSiteCode and cda:targetSiteCode[not(@nullFlavor)]) or cda:targetSiteCode">Error: OperativeNote - 4.121.10 targetSiteCode
		Conformance: SHOULD contain zero or more [0..*] targetSiteCode (CONF:7683), which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:16082)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.targetSiteCode->isEmpty()) and self.targetSiteCode->exists(element | element.isNullFlavorUndefined())) implies (self.targetSiteCode->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = element.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and not value.code.oclIsUndefined()))
			Constraint name: ProcedureActivityProcedureTargetSiteCode
		-->
	<assert test="not(cda:targetSiteCode and cda:targetSiteCode[not(@nullFlavor)]) or not(cda:targetSiteCode[not(. and @codeSystem = '2.16.840.1.113883.6.96' and @code)])">Error: OperativeNote - 4.121.10 targetSiteCode
		Conformance: SHOULD contain zero or more [0..*] targetSiteCode (CONF:7683), which SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:16082)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_statusCode_4_121_6-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_statusCode_4_121_6-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_statusCode_4_121_6-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: true
			Constraint name: ProcedureActivityProcedureStatusCodeP
		-->
	<assert test="true()">Error: OperativeNote - 4.121.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode, which SHALL be selected from ValueSet ProcedureActStatusCode 2.16.840.1.113883.11.20.9.22 DYNAMIC (CONF:7661)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed' or value.code = 'active' or value.code = 'aborted' or value.code = 'cancelled'
			Constraint name: ProcedureActivityProcedureStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed' or @code = 'active' or @code = 'aborted' or @code = 'cancelled']">Error: OperativeNote - 4.121.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode, which SHALL be selected from ValueSet ProcedureActStatusCode 2.16.840.1.113883.11.20.9.22 DYNAMIC (CONF:7661)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_code_4_122_5-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_code_4_122_5-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_code_4_122_5-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProcedureActivityProcedureCode
		-->
	<assert test="cda:code">Error: OperativeNote - 4.122.5 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:7656, R2.0=CONF:1098-7656)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_serviceDeliveryLocation_4_122_12-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_serviceDeliveryLocation_4_122_12-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_serviceDeliveryLocation_4_122_12-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.participant->select(participant : cda::Participant2 | not participant.participantRole.oclIsUndefined() and participant.participantRole.oclIsKindOf(consol::ServiceDeliveryLocation))->size() >= 0
			Constraint name: ProcedureActivityProcedureServiceDeliveryLocation
		-->
	<assert test="count(cda:participant[cda:participantRole and cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']) &gt;= 0">Error: OperativeNote - 4.122.12 serviceDeliveryLocation
		Conformance: MAY contain  [0..*] participant such that it  (CONF:7765, CONF:15912, R2.0=CONF:1098-7765, R2.0=CONF:1098-15912)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_effectiveTime_4_122_7-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_effectiveTime_4_122_7-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_effectiveTime_4_122_7-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: ((not self.effectiveTime.oclIsUndefined()) and self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())
			Constraint name: ProcedureActivityProcedureEffectiveTime
		-->
	<assert test="not(cda:effectiveTime and not(cda:effectiveTime/@nullFlavor)) or cda:effectiveTime">Error: OperativeNote - 4.122.7 effectiveTime
		Conformance: SHOULD contain zero or one [0..1] effectiveTime (CONF:7662, R2.0=CONF:1098-7662)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_15-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_15-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_15-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.entryRelationship->select(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(cda::EntryRelationship))->select(typeCode=vocab::x_ActRelationshipEntryRelationship::COMP and not encounter.oclIsUndefined() and encounter.oclIsKindOf(cda::Encounter))->size() >= 0
			Constraint name: ProcedureActivityProcedureEntryRelationship
		-->
	<assert test="count(cda:entryRelationship[@typeCode = 'COMP' and cda:encounter]) &gt;= 0">Error: OperativeNote - 4.121.15 entryRelationship
		Conformance: MAY contain zero or more [0..*] entryRelationship (CONF:7768, R2.0=CONF:1098-7768)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_18-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_18-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_18-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::ProcedureActivityProcedure::IndicationEntryRelationship))
			Constraint name: ProcedureActivityProcedureEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: OperativeNote - 4.121.18 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_ProcedureActivityProcedureCodeCodeSystems_4_121_19-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_ProcedureActivityProcedureCodeCodeSystems_4_121_19-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_ProcedureActivityProcedureCodeCodeSystems_4_121_19-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.code.isNullFlavorDefined() or self.code.codeSystem = '2.16.840.1.113883.6.1' xor self.code.codeSystem = '2.16.840.1.113883.6.96' xor self.code.codeSystem = '2.16.840.1.113883.6.12' xor self.code.codeSystem = '2.16.840.1.113883.6.4'
			Constraint name: ProcedureActivityProcedureCodeCodeSystems
		-->
	<assert test="cda:code/@nullFlavor or cda:code/@codeSystem = '2.16.840.1.113883.6.1' or cda:code/@codeSystem = '2.16.840.1.113883.6.96' or cda:code/@codeSystem = '2.16.840.1.113883.6.12' or cda:code/@codeSystem = '2.16.840.1.113883.6.4'">Error: OperativeNote - 4.121.19 ProcedureActivityProcedureCodeCodeSystems
		Conformance: code in a procedure activity SHOULD be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and MAY be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:19207)
		Analysis: code in a procedure activity SHOULD be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and MAY be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4)
		Validation message: n/a	</assert>
		<!--
			OCL: not code.oclIsUndefined() implies not code.originalText.oclIsUndefined()
			Constraint name: ProcedureActivityProcedureCodeOriginalText
		-->
	<assert test="not(cda:code) or cda:code/cda:originalText">Error: OperativeNote - 4.121.19 ProcedureActivityProcedureCodeCodeSystems
		Conformance: code in a procedure activity SHOULD be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and MAY be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:19207)
		Analysis: code SHOULD contain zero or one [0..1] originalText
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_priorityCode_4_122_8-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_priorityCode_4_122_8-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_priorityCode_4_122_8-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: ((not self.priorityCode.oclIsUndefined()) and self.priorityCode.isNullFlavorUndefined()) implies (not self.priorityCode.oclIsUndefined())
			Constraint name: ProcedureActivityProcedurePriorityCodeP
		-->
	<assert test="not(cda:priorityCode and not(cda:priorityCode/@nullFlavor)) or cda:priorityCode">Error: OperativeNote - 4.122.8 priorityCode
		Conformance: MAY contain zero or one [0..1] priorityCode, which SHALL be selected from ValueSet Act Priority 2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:7668, R2.0=CONF:1098-7668)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.priorityCode.oclIsUndefined()) and self.priorityCode.isNullFlavorUndefined()) implies (not self.priorityCode.oclIsUndefined() and self.priorityCode.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.priorityCode.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.5.7' and (value.code = 'A' or value.code = 'CR' or value.code = 'CS' or value.code = 'CSP' or value.code = 'CSR' or value.code = 'EL' or value.code = 'EM' or value.code = 'P' or value.code = 'PRN' or value.code = 'R' or value.code = 'RR' or value.code = 'S' or value.code = 'T' or value.code = 'UD' or value.code = 'UR'))
			Constraint name: ProcedureActivityProcedurePriorityCode
		-->
	<assert test="not(cda:priorityCode and not(cda:priorityCode/@nullFlavor)) or cda:priorityCode and cda:priorityCode[@codeSystem = '2.16.840.1.113883.5.7' and (@code = 'A' or @code = 'CR' or @code = 'CS' or @code = 'CSP' or @code = 'CSR' or @code = 'EL' or @code = 'EM' or @code = 'P' or @code = 'PRN' or @code = 'R' or @code = 'RR' or @code = 'S' or @code = 'T' or @code = 'UD' or @code = 'UR')]">Error: OperativeNote - 4.122.8 priorityCode
		Conformance: MAY contain zero or one [0..1] priorityCode, which SHALL be selected from ValueSet Act Priority 2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:7668, R2.0=CONF:1098-7668)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_methodCode_4_122_9-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_methodCode_4_122_9-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_methodCode_4_122_9-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: ((not self.methodCode->isEmpty()) and self.methodCode->exists(element | element.isNullFlavorUndefined())) implies (self.methodCode->size() <= 1)
			Constraint name: ProcedureActivityProcedureMethodCode
		-->
	<assert test="not(cda:methodCode and cda:methodCode[not(@nullFlavor)]) or count(cda:methodCode) &lt;= 1">Error: OperativeNote - 4.122.9 methodCode
		Conformance: MAY contain zero or one [0..1] methodCode (CONF:7670, R2.0=CONF:1098-7670)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_productInstance_4_122_14-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_productInstance_4_122_14-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_productInstance_4_122_14-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.participant->select(participant : cda::Participant2 | not participant.participantRole.oclIsUndefined() and participant.participantRole.oclIsKindOf(consol::ProductInstance))->size() >= 0
			Constraint name: ProcedureActivityProcedureProductInstance
		-->
	<assert test="count(cda:participant[cda:participantRole and cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']) &gt;= 0">Error: OperativeNote - 4.122.14 productInstance
		Conformance: MAY contain  [0..*] participant such that it  (CONF:7751, CONF:15911, R2.0=CONF:1098-7751, R2.0=CONF:1098-15911)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_classCode_4_122_2-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_classCode_4_122_2-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_classCode_4_122_2-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.classCode=vocab::ActClass::PROC
			Constraint name: ProcedureActivityProcedureClassCode
		-->
	<assert test="@classCode = 'PROC'">Error: OperativeNote - 4.122.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;PROC&quot;  (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7652, R2.0=CONF:1098-7652)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_16-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_16-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_16-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::ProcedureActivityProcedure::MedicationActivityEntryRelationship))
			Constraint name: ProcedureActivityProcedureEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: OperativeNote - 4.121.16 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityProcedure: 2.16.840.1.113883.10.20.22.4.14 -->

<pattern id="p-OperativeNote_3A_ProcedureActivityProcedure_specimen_4_121_11-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityProcedure_specimen_4_121_11-error_mdht" name="p-OperativeNote_3A_ProcedureActivityProcedure_specimen_4_121_11-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">
		<!--
			OCL: self.specimen->select(specimen : cda::Specimen | not specimen.oclIsUndefined() and specimen.oclIsKindOf(cda::Specimen))->size() >= 0
			Constraint name: ProcedureActivityProcedureSpecimen
		-->
	<assert test="count(cda:specimen) &gt;= 0">Error: OperativeNote - 4.121.11 specimen
		Conformance: MAY contain zero or more [0..*] specimen (CONF:7697)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureSpecimen -->

<pattern id="p-OperativeNote_3A_ProcedureSpecimen_ProcedureActivityProcedureProcedureSpecimenSpecimenRole_4_121_11_i-error_mdht" see="#p-OperativeNote_3A_ProcedureSpecimen_ProcedureActivityProcedureProcedureSpecimenSpecimenRole_4_121_11_i-error_mdht" name="p-OperativeNote_3A_ProcedureSpecimen_ProcedureActivityProcedureProcedureSpecimenSpecimenRole_4_121_11_i-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/specimen
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/specimen
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:specimen">
		<!--
			OCL: self.specimenRole->size() = 1
			Constraint name: ProcedureActivityProcedureProcedureSpecimenSpecimenRole
		-->
	<assert test="count(cda:specimenRole) = 1">Error: OperativeNote - 4.121.11.i ProcedureActivityProcedureProcedureSpecimenSpecimenRole
		Conformance: SHALL contain exactly one [1..1] specimenRole (CONF:7704, R2.0=CONF:1098-7704)
		Analysis: SHALL contain exactly one [1..1] specimenRole
		Validation message: n/a	</assert>
		<!--
			OCL: self.specimenRole.id->size() > 0
			Constraint name: ProcedureActivityProcedureProcedureSpecimenSpecimentRoleId
		-->
	<assert test="count(cda:specimenRole/cda:id) &gt; 0">Error: OperativeNote - 4.121.11.i ProcedureActivityProcedureProcedureSpecimenSpecimenRole
		Conformance: SHALL contain exactly one [1..1] specimenRole (CONF:7704, R2.0=CONF:1098-7704)
		Analysis: specimenRole SHOULD contain zero or more [0..*] id
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceDeliveryLocation: 2.16.840.1.113883.10.20.22.4.32 -->

<pattern id="p-OperativeNote_3A_ServiceDeliveryLocation_code_4_122_12_iii-error_mdht" see="#p-OperativeNote_3A_ServiceDeliveryLocation_code_4_122_12_iii-error_mdht" name="p-OperativeNote_3A_ServiceDeliveryLocation_code_4_122_12_iii-error_mdht">
		<!--
			UML path: /ServiceDeliveryLocation
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/serviceDeliveryLocation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">
		<!--
			OCL: true
			Constraint name: ServiceDeliveryLocationCodeP
		-->
	<assert test="true()">Error: OperativeNote - 4.122.12.iii code
		Conformance: SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet HealthcareServiceLocation 2.16.840.1.113883.1.11.20275 DYNAMIC (CONF:16850)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.259' and not value.code.oclIsUndefined()
			Constraint name: ServiceDeliveryLocationCode
		-->
	<assert test="cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.259' and @code]">Error: OperativeNote - 4.122.12.iii code
		Conformance: SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet HealthcareServiceLocation 2.16.840.1.113883.1.11.20275 DYNAMIC (CONF:16850)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceDeliveryLocation: 2.16.840.1.113883.10.20.22.4.32 -->

<pattern id="p-OperativeNote_3A_ServiceDeliveryLocation_addr_4_122_12_iv-error_mdht" see="#p-OperativeNote_3A_ServiceDeliveryLocation_addr_4_122_12_iv-error_mdht" name="p-OperativeNote_3A_ServiceDeliveryLocation_addr_4_122_12_iv-error_mdht">
		<!--
			UML path: /ServiceDeliveryLocation
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/serviceDeliveryLocation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">
		<!--
			OCL: ((not self.addr->isEmpty()) and self.addr->exists(element | element.isNullFlavorUndefined())) implies (not self.addr->isEmpty())
			Constraint name: ServiceDeliveryLocationAddr
		-->
	<assert test="not(cda:addr and cda:addr[not(@nullFlavor)]) or cda:addr">Error: OperativeNote - 4.122.12.iv addr
		Conformance: SHOULD contain zero or more [0..*] addr (CONF:7760)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceDeliveryLocation: 2.16.840.1.113883.10.20.22.4.32 -->

<pattern id="p-OperativeNote_3A_ServiceDeliveryLocation_ServiceDeliveryLocationHasPlayingEntity_4_122_12_vi-error_mdht" see="#p-OperativeNote_3A_ServiceDeliveryLocation_ServiceDeliveryLocationHasPlayingEntity_4_122_12_vi-error_mdht" name="p-OperativeNote_3A_ServiceDeliveryLocation_ServiceDeliveryLocationHasPlayingEntity_4_122_12_vi-error_mdht">
		<!--
			UML path: /ServiceDeliveryLocation
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/serviceDeliveryLocation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">
		<!--
			OCL: self.playingEntity->size() = 1
			Constraint name: ServiceDeliveryLocationHasPlayingEntity
		-->
	<assert test="count(cda:playingEntity) = 1">Error: OperativeNote - 4.122.12.vi ServiceDeliveryLocationHasPlayingEntity
		Conformance: MAY contain zero or one [0..1] playingEntity (CONF:7762)
		Analysis: MAY contain zero or one [0..1] playingEntity
		Validation message: n/a	</assert>
		<!--
			OCL: self.playingEntity->size()>0 implies self.playingEntity.classCode=vocab::EntityClassRoot::PLC
			Constraint name: ServiceDeliveryLocationHasPlayingEntityClassCode
		-->
	<assert test="not(count(cda:playingEntity) &gt; 0) or cda:playingEntity/@classCode = 'PLC'">Error: OperativeNote - 4.122.12.vi ServiceDeliveryLocationHasPlayingEntity
		Conformance: MAY contain zero or one [0..1] playingEntity (CONF:7762)
		Analysis: playingEntity, if present, SHALL contain exactly one [1..1] @classCode=&quot;PLC&quot; (CodeSystem: EntityClass 2.16.840.1.113883.5.41)
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceDeliveryLocation: 2.16.840.1.113883.10.20.22.4.32 -->

<pattern id="p-OperativeNote_3A_ServiceDeliveryLocation_templateId_4_122_12_i-error_mdht" see="#p-OperativeNote_3A_ServiceDeliveryLocation_templateId_4_122_12_i-error_mdht" name="p-OperativeNote_3A_ServiceDeliveryLocation_templateId_4_122_12_i-error_mdht">
		<!--
			UML path: /ServiceDeliveryLocation
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/serviceDeliveryLocation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.32')
			Constraint name: ServiceDeliveryLocationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32'">Error: OperativeNote - 4.122.12.i templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7635, CONF:10524 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.32&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceDeliveryLocation: 2.16.840.1.113883.10.20.22.4.32 -->

<pattern id="p-OperativeNote_3A_ServiceDeliveryLocation_classCode_4_122_12_ii-error_mdht" see="#p-OperativeNote_3A_ServiceDeliveryLocation_classCode_4_122_12_ii-error_mdht" name="p-OperativeNote_3A_ServiceDeliveryLocation_classCode_4_122_12_ii-error_mdht">
		<!--
			UML path: /ServiceDeliveryLocation
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/serviceDeliveryLocation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">
		<!--
			OCL: isDefined('classCode') and self.classCode=vocab::RoleClassRoot::SDLOC
			Constraint name: ServiceDeliveryLocationClassCode
		-->
	<assert test="attribute::node()[name() = 'classCode'] and @classCode = 'SDLOC'">Error: OperativeNote - 4.122.12.ii classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;SDLOC&quot;  (CONF:7758)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ServiceDeliveryLocation: 2.16.840.1.113883.10.20.22.4.32 -->

<pattern id="p-OperativeNote_3A_ServiceDeliveryLocation_telecom_4_122_12_v-error_mdht" see="#p-OperativeNote_3A_ServiceDeliveryLocation_telecom_4_122_12_v-error_mdht" name="p-OperativeNote_3A_ServiceDeliveryLocation_telecom_4_122_12_v-error_mdht">
		<!--
			UML path: /ServiceDeliveryLocation
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/serviceDeliveryLocation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">
		<!--
			OCL: ((not self.telecom->isEmpty()) and self.telecom->exists(element | element.isNullFlavorUndefined())) implies (not self.telecom->isEmpty())
			Constraint name: ServiceDeliveryLocationTelecom
		-->
	<assert test="not(cda:telecom and cda:telecom[not(@nullFlavor)]) or cda:telecom">Error: OperativeNote - 4.122.12.v telecom
		Conformance: SHOULD contain zero or more [0..*] telecom (CONF:7761)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityPerformer -->

<pattern id="p-OperativeNote_3A_ProcedureActivityPerformer_assignedEntity_4_121_13_i-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityPerformer_assignedEntity_4_121_13_i-error_mdht" name="p-OperativeNote_3A_ProcedureActivityPerformer_assignedEntity_4_121_13_i-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/performer
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/performer
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer">
		<!--
			OCL: self.assignedEntity->one(assignedEntity : cda::AssignedEntity | not assignedEntity.oclIsUndefined() and assignedEntity.oclIsKindOf(consol::ProcedureActivityProcedure::ProcedureActivityPerformer::ProcedureActivityAssignedEntity))
			Constraint name: ProcedureActivityProcedureProcedureActivityPerformerAssignedEntity
		-->
	<assert test="count(cda:assignedEntity)=1">Error: OperativeNote - 4.121.13.i assignedEntity
		Conformance: SHALL contain exactly one [1..1] assignedEntity (CONF:7720)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityAssignedEntity -->

<pattern id="p-OperativeNote_3A_ProcedureActivityAssignedEntity_addr_4_121_13_i_b-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityAssignedEntity_addr_4_121_13_i_b-error_mdht" name="p-OperativeNote_3A_ProcedureActivityAssignedEntity_addr_4_121_13_i_b-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/performer/assignedEntity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/performer/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity">
		<!--
			OCL: self.addr->size() = 1
			Constraint name: ProcedureActivityProcedureProcedureActivityPerformerProcedureActivityAssignedEntityAddr
		-->
	<assert test="count(cda:addr) = 1">Error: OperativeNote - 4.121.13.i.b addr
		Conformance: SHALL contain exactly one [1..1] addr (CONF:7731)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityAssignedEntity -->

<pattern id="p-OperativeNote_3A_ProcedureActivityAssignedEntity_representedOrganization_4_122_7_i_d-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityAssignedEntity_representedOrganization_4_122_7_i_d-error_mdht" name="p-OperativeNote_3A_ProcedureActivityAssignedEntity_representedOrganization_4_122_7_i_d-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/performer/assignedEntity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/performer/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity">
		<!--
			OCL: self.representedOrganization->select(representedOrganization : cda::Organization | not representedOrganization.oclIsUndefined() and representedOrganization.oclIsKindOf(consol::ProcedureActivityProcedure::ProcedureActivityPerformer::ProcedureActivityAssignedEntity::ProcedureActivityRepresentedOrganization))->size() <= 1
			Constraint name: ProcedureActivityProcedureProcedureActivityPerformerProcedureActivityAssignedEntityRepresentedOrganization
		-->
	<assert test="count(cda:representedOrganization) &lt;= 1">Error: OperativeNote - 4.122.7.i.d representedOrganization
		Conformance: SHOULD contain zero or one [0..1] representedOrganization (CONF:7733, R2.0=CONF:1098-7733)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityAssignedEntity -->

<pattern id="p-OperativeNote_3A_ProcedureActivityAssignedEntity_telecom_4_121_13_i_c-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityAssignedEntity_telecom_4_121_13_i_c-error_mdht" name="p-OperativeNote_3A_ProcedureActivityAssignedEntity_telecom_4_121_13_i_c-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/performer/assignedEntity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/performer/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity">
		<!--
			OCL: self.telecom->size() = 1
			Constraint name: ProcedureActivityProcedureProcedureActivityPerformerProcedureActivityAssignedEntityTelecom
		-->
	<assert test="count(cda:telecom) = 1">Error: OperativeNote - 4.121.13.i.c telecom
		Conformance: SHALL contain exactly one [1..1] telecom (CONF:7732)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityAssignedEntity -->

<pattern id="p-OperativeNote_3A_ProcedureActivityAssignedEntity_id_4_122_7_i_a-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityAssignedEntity_id_4_122_7_i_a-error_mdht" name="p-OperativeNote_3A_ProcedureActivityAssignedEntity_id_4_122_7_i_a-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/performer/assignedEntity
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/performer/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: ProcedureActivityProcedureProcedureActivityPerformerProcedureActivityAssignedEntityId
		-->
	<assert test="cda:id">Error: OperativeNote - 4.122.7.i.a id
		Conformance: SHALL contain at least one [1..*] id (CONF:7722, R2.0=CONF:1098-7722)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityRepresentedOrganization -->

<pattern id="p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_id_4_122_7_i_d_1-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_id_4_122_7_i_d_1-error_mdht" name="p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_id_4_122_7_i_d_1-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure2/performer/assignedEntity/representedOrganization
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/performer/assignedEntity/representedOrganization
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity/cda:representedOrganization">
		<!--
			OCL: ((not self.id->isEmpty()) and self.id->exists(element | element.isNullFlavorUndefined())) implies (not self.id->isEmpty())
			Constraint name: ProcedureActivityProcedureProcedureActivityPerformerProcedureActivityAssignedEntityProcedureActivityRepresentedOrganizationId
		-->
	<assert test="not(cda:id and cda:id[not(@nullFlavor)]) or cda:id">Error: OperativeNote - 4.122.7.i.d.1 id
		Conformance: SHOULD contain zero or more [0..*] id (CONF:7734, R2.0=CONF:1098-7734)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityRepresentedOrganization -->

<pattern id="p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_name_4_122_7_i_d_2-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_name_4_122_7_i_d_2-error_mdht" name="p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_name_4_122_7_i_d_2-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure2/performer/assignedEntity/representedOrganization
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/performer/assignedEntity/representedOrganization
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity/cda:representedOrganization">
		<!--
			OCL: ((not self.name->isEmpty()) and self.name->exists(element | element.isNullFlavorUndefined())) implies (not self.name->isEmpty())
			Constraint name: ProcedureActivityProcedureProcedureActivityPerformerProcedureActivityAssignedEntityProcedureActivityRepresentedOrganizationName
		-->
	<assert test="not(cda:name and cda:name[not(@nullFlavor)]) or cda:name">Error: OperativeNote - 4.122.7.i.d.2 name
		Conformance: MAY contain zero or more [0..*] name (CONF:7735, R2.0=CONF:1098-7735)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityRepresentedOrganization -->

<pattern id="p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_addr_4_122_7_i_d_4-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_addr_4_122_7_i_d_4-error_mdht" name="p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_addr_4_122_7_i_d_4-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure2/performer/assignedEntity/representedOrganization
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/performer/assignedEntity/representedOrganization
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity/cda:representedOrganization">
		<!--
			OCL: self.addr->size() = 1
			Constraint name: ProcedureActivityProcedureProcedureActivityPerformerProcedureActivityAssignedEntityProcedureActivityRepresentedOrganizationAddr
		-->
	<assert test="count(cda:addr) = 1">Error: OperativeNote - 4.122.7.i.d.4 addr
		Conformance: SHALL contain exactly one [1..1] addr (CONF:7736, R2.0=CONF:1098-7736)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityRepresentedOrganization -->

<pattern id="p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_telecom_4_122_7_i_d_3-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_telecom_4_122_7_i_d_3-error_mdht" name="p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_telecom_4_122_7_i_d_3-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure2/performer/assignedEntity/representedOrganization
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/performer/assignedEntity/representedOrganization
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity/cda:representedOrganization">
		<!--
			OCL: self.telecom->size() = 1
			Constraint name: ProcedureActivityProcedureProcedureActivityPerformerProcedureActivityAssignedEntityProcedureActivityRepresentedOrganizationTelecom
		-->
	<assert test="count(cda:telecom) = 1">Error: OperativeNote - 4.122.7.i.d.3 telecom
		Conformance: SHALL contain exactly one [1..1] telecom (CONF:7737, R2.0=CONF:1098-7737)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProductInstance: 2.16.840.1.113883.10.20.22.4.37 -->

<pattern id="p-OperativeNote_3A_ProductInstance_id_4_122_14_iii-error_mdht" see="#p-OperativeNote_3A_ProductInstance_id_4_122_14_iii-error_mdht" name="p-OperativeNote_3A_ProductInstance_id_4_122_14_iii-error_mdht">
		<!--
			UML path: /ProductInstance
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/productInstance
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: ProductInstanceId
		-->
	<assert test="cda:id">Error: OperativeNote - 4.122.14.iii id
		Conformance: SHALL contain at least one [1..*] id (CONF:7902)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProductInstance: 2.16.840.1.113883.10.20.22.4.37 -->

<pattern id="p-OperativeNote_3A_ProductInstance_scopingEntity_4_122_14_iv-error_mdht" see="#p-OperativeNote_3A_ProductInstance_scopingEntity_4_122_14_iv-error_mdht" name="p-OperativeNote_3A_ProductInstance_scopingEntity_4_122_14_iv-error_mdht">
		<!--
			UML path: /ProductInstance
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/productInstance
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']">
		<!--
			OCL: self.scopingEntity->one(scopingEntity : cda::Entity | not scopingEntity.oclIsUndefined() and scopingEntity.oclIsKindOf(cda::Entity))
			Constraint name: ProductInstanceScopingEntity
		-->
	<assert test="count(cda:scopingEntity)=1">Error: OperativeNote - 4.122.14.iv scopingEntity
		Conformance: SHALL contain exactly one [1..1] scopingEntity (CONF:7905)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProductInstance: 2.16.840.1.113883.10.20.22.4.37 -->

<pattern id="p-OperativeNote_3A_ProductInstance_templateId_4_122_14_i-error_mdht" see="#p-OperativeNote_3A_ProductInstance_templateId_4_122_14_i-error_mdht" name="p-OperativeNote_3A_ProductInstance_templateId_4_122_14_i-error_mdht">
		<!--
			UML path: /ProductInstance
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/productInstance
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.37')
			Constraint name: ProductInstanceTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37'">Error: OperativeNote - 4.122.14.i templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7901, CONF:10522 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.37&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProductInstance: 2.16.840.1.113883.10.20.22.4.37 -->

<pattern id="p-OperativeNote_3A_ProductInstance_playingDevice_4_122_14_v-error_mdht" see="#p-OperativeNote_3A_ProductInstance_playingDevice_4_122_14_v-error_mdht" name="p-OperativeNote_3A_ProductInstance_playingDevice_4_122_14_v-error_mdht">
		<!--
			UML path: /ProductInstance
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/productInstance
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']">
		<!--
			OCL: self.playingDevice->one(playingDevice : cda::Device | not playingDevice.oclIsUndefined() and playingDevice.oclIsKindOf(cda::Device))
			Constraint name: ProductInstancePlayingDevice
		-->
	<assert test="count(cda:playingDevice)=1">Error: OperativeNote - 4.122.14.v playingDevice
		Conformance: SHALL contain exactly one [1..1] playingDevice (CONF:7903)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProductInstance: 2.16.840.1.113883.10.20.22.4.37 -->

<pattern id="p-OperativeNote_3A_ProductInstance_classCode_4_122_14_ii-error_mdht" see="#p-OperativeNote_3A_ProductInstance_classCode_4_122_14_ii-error_mdht" name="p-OperativeNote_3A_ProductInstance_classCode_4_122_14_ii-error_mdht">
		<!--
			UML path: /ProductInstance
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/productInstance
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']">
		<!--
			OCL: isDefined('classCode') and self.classCode=vocab::RoleClassRoot::MANU
			Constraint name: ProductInstanceClassCode
		-->
	<assert test="attribute::node()[name() = 'classCode'] and @classCode = 'MANU'">Error: OperativeNote - 4.122.14.ii classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;MANU&quot;  (CONF:7900)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ScopingEntity -->

<pattern id="p-OperativeNote_3A_ScopingEntity_id_4_122_14_iv_a-error_mdht" see="#p-OperativeNote_3A_ScopingEntity_id_4_122_14_iv_a-error_mdht" name="p-OperativeNote_3A_ScopingEntity_id_4_122_14_iv_a-error_mdht">
		<!--
			UML path: /ProductInstance/scopingEntity
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/productInstance/scopingEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']/cda:scopingEntity">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: ProductInstanceScopingEntityId
		-->
	<assert test="cda:id">Error: OperativeNote - 4.122.14.iv.a id
		Conformance: SHALL contain at least one [1..*] id (CONF:7908)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlayingDevice -->

<pattern id="p-OperativeNote_3A_PlayingDevice_code_4_122_14_v_a-error_mdht" see="#p-OperativeNote_3A_PlayingDevice_code_4_122_14_v_a-error_mdht" name="p-OperativeNote_3A_PlayingDevice_code_4_122_14_v_a-error_mdht">
		<!--
			UML path: /ProductInstance/playingDevice
			UML root path: /ReferralNote/component/structuredBody/proceduresSectionEntriesOptional2/proceduresSectionEntriesOptional2/entry/procedureActivityProcedure2/productInstance/playingDevice
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']/cda:playingDevice">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: ProductInstancePlayingDeviceCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: OperativeNote - 4.122.14.v.a code
		Conformance: SHOULD contain zero or one [0..1] code (CONF:7904)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EntryRelationship -->

<pattern id="p-OperativeNote_3A_EntryRelationship_typeCode_4_121_15_ii-error_mdht" see="#p-OperativeNote_3A_EntryRelationship_typeCode_4_121_15_ii-error_mdht" name="p-OperativeNote_3A_EntryRelationship_typeCode_4_121_15_ii-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship[cda:encounter/@classCode = 'ENC']">
		<!--
			OCL: self.typeCode=vocab::x_ActRelationshipEntryRelationship::COMP
			Constraint name: ProcedureActivityProcedureEntryRelationshipTypeCode
		-->
	<assert test="@typeCode = 'COMP'">Error: OperativeNote - 4.121.15.ii typeCode
		Conformance: SHALL contain exactly one [1..1] @typeCode=&quot;COMP&quot;  (CONF:7769, R2.0=CONF:1098-7769)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EntryRelationship -->

<pattern id="p-OperativeNote_3A_EntryRelationship_procedureActivityEncounter_4_121_15_iii-error_mdht" see="#p-OperativeNote_3A_EntryRelationship_procedureActivityEncounter_4_121_15_iii-error_mdht" name="p-OperativeNote_3A_EntryRelationship_procedureActivityEncounter_4_121_15_iii-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship[cda:encounter/@classCode = 'ENC']">
		<!--
			OCL: self.encounter->one(encounter : cda::Encounter | not encounter.oclIsUndefined() and encounter.oclIsKindOf(consol::ProcedureActivityProcedure::EntryRelationship::ProcedureActivityEncounter))
			Constraint name: ProcedureActivityProcedureEntryRelationshipProcedureActivityEncounter
		-->
	<assert test="count(cda:encounter)=1">Error: OperativeNote - 4.121.15.iii procedureActivityEncounter
		Conformance: SHALL contain exactly one [1..1] encounter (CONF:7770, R2.0=CONF:1098-7770)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- EntryRelationship -->

<pattern id="p-OperativeNote_3A_EntryRelationship_inversionInd_4_121_15_i-error_mdht" see="#p-OperativeNote_3A_EntryRelationship_inversionInd_4_121_15_i-error_mdht" name="p-OperativeNote_3A_EntryRelationship_inversionInd_4_121_15_i-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship[cda:encounter/@classCode = 'ENC']">
		<!--
			OCL: not self.inversionInd.oclIsUndefined() and self.inversionInd=true
			Constraint name: ProcedureActivityProcedureEntryRelationshipInversionInd
		-->
	<assert test="@inversionInd and @inversionInd = 'true'">Error: OperativeNote - 4.121.15.i inversionInd
		Conformance: SHALL contain exactly one [1..1] @inversionInd=&quot;true&quot;  (CONF:8009, R2.0=CONF:1098-8009)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityEncounter -->

<pattern id="p-OperativeNote_3A_ProcedureActivityEncounter_classCode_4_121_15_iii_a-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityEncounter_classCode_4_121_15_iii_a-error_mdht" name="p-OperativeNote_3A_ProcedureActivityEncounter_classCode_4_121_15_iii_a-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/entryRelationship/procedureActivityEncounter
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/entryRelationship/procedureActivityEncounter
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship/cda:encounter[@classCode = 'ENC']">
		<!--
			OCL: self.classCode=vocab::ActClass::ENC
			Constraint name: ProcedureActivityProcedureEntryRelationshipProcedureActivityEncounterClassCode
		-->
	<assert test="@classCode = 'ENC'">Error: OperativeNote - 4.121.15.iii.a classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;ENC&quot;  (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7771, R2.0=CONF:1098-7771)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityEncounter -->

<pattern id="p-OperativeNote_3A_ProcedureActivityEncounter_moodCode_4_121_15_iii_b-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityEncounter_moodCode_4_121_15_iii_b-error_mdht" name="p-OperativeNote_3A_ProcedureActivityEncounter_moodCode_4_121_15_iii_b-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/entryRelationship/procedureActivityEncounter
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/entryRelationship/procedureActivityEncounter
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship/cda:encounter[@classCode = 'ENC']">
		<!--
			OCL: self.moodCode=vocab::x_DocumentEncounterMood::EVN
			Constraint name: ProcedureActivityProcedureEntryRelationshipProcedureActivityEncounterMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: OperativeNote - 4.121.15.iii.b moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7772, R2.0=CONF:1098-7772)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureActivityEncounter -->

<pattern id="p-OperativeNote_3A_ProcedureActivityEncounter_id_4_121_15_iii_c-error_mdht" see="#p-OperativeNote_3A_ProcedureActivityEncounter_id_4_121_15_iii_c-error_mdht" name="p-OperativeNote_3A_ProcedureActivityEncounter_id_4_121_15_iii_c-error_mdht">
		<!--
			UML path: /ProcedureActivityProcedure/entryRelationship/procedureActivityEncounter
			UML root path: /ContinuityOfCareDocument/component/structuredBody/proceduresSection/proceduresSection/entry/procedureActivityProcedure/entryRelationship/procedureActivityEncounter
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship/cda:encounter[@classCode = 'ENC']">
		<!--
			OCL: self.id->size() = 1
			Constraint name: ProcedureActivityProcedureEntryRelationshipProcedureActivityEncounterId
		-->
	<assert test="count(cda:id) = 1">Error: OperativeNote - 4.121.15.iii.c id
		Conformance: SHALL contain exactly one [1..1] id (CONF:7773, R2.0=CONF:1098-7773)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_complicationsSection_2_13_5_i_b_1-error_mdht" see="#p-OperativeNote_2_Component_complicationsSection_2_13_5_i_b_1-error_mdht" name="p-OperativeNote_2_Component_complicationsSection_2_13_5_i_b_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/complicationsSection
			UML root path: /OperativeNote/component/structuredBody/complicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">
		<!--
			OCL: self.section->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ComplicationsSection))
			Constraint name: OperativeNoteComponentStructuredBodyComponentComplicationsSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37'])=1">Error: OperativeNote - 2.13.5.i.b.1 complicationsSection
		Conformance: SHALL contain exactly one [1..1] section (CONF:9885)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ComplicationsSection: 2.16.840.1.113883.10.20.22.2.37 -->

<pattern id="p-OperativeNote_3A_ComplicationsSection_entry_3_18_5-error_mdht" see="#p-OperativeNote_3A_ComplicationsSection_entry_3_18_5-error_mdht" name="p-OperativeNote_3A_ComplicationsSection_entry_3_18_5-error_mdht">
		<!--
			UML path: /ComplicationsSection
			UML root path: /OperativeNote/component/structuredBody/complicationsSection/complicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::ComplicationsSection::ProblemObservationEntry))
			Constraint name: ComplicationsSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.18.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ComplicationsSection: 2.16.840.1.113883.10.20.22.2.37 -->

<pattern id="p-OperativeNote_2_ComplicationsSection_text_3_19_4-error_mdht" see="#p-OperativeNote_2_ComplicationsSection_text_3_19_4-error_mdht" name="p-OperativeNote_2_ComplicationsSection_text_3_19_4-error_mdht">
		<!--
			UML path: /ComplicationsSection
			UML root path: /OperativeNote/component/structuredBody/complicationsSection/complicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ComplicationsSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.19.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8177, R2.1=CONF:1198-8177)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ComplicationsSection: 2.16.840.1.113883.10.20.22.2.37 -->

<pattern id="p-OperativeNote_2_ComplicationsSection_title_3_19_3-error_mdht" see="#p-OperativeNote_2_ComplicationsSection_title_3_19_3-error_mdht" name="p-OperativeNote_2_ComplicationsSection_title_3_19_3-error_mdht">
		<!--
			UML path: /ComplicationsSection
			UML root path: /OperativeNote/component/structuredBody/complicationsSection/complicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ComplicationsSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.19.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8176, R2.1=CONF:1198-8176)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ComplicationsSection: 2.16.840.1.113883.10.20.22.2.37 -->

<pattern id="p-OperativeNote_2_ComplicationsSection_templateId_3_18_1-error_mdht" see="#p-OperativeNote_2_ComplicationsSection_templateId_3_18_1-error_mdht" name="p-OperativeNote_2_ComplicationsSection_templateId_3_18_1-error_mdht">
		<!--
			UML path: /ComplicationsSection
			UML root path: /OperativeNote/component/structuredBody/complicationsSection/complicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.37')
			Constraint name: ComplicationsSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37'">Error: OperativeNote - 3.18.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8174, CONF:10384 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.37&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ComplicationsSection: 2.16.840.1.113883.10.20.22.2.37 -->

<pattern id="p-OperativeNote_2_ComplicationsSection_code_3_18_2-error_mdht" see="#p-OperativeNote_2_ComplicationsSection_code_3_18_2-error_mdht" name="p-OperativeNote_2_ComplicationsSection_code_3_18_2-error_mdht">
		<!--
			UML path: /ComplicationsSection
			UML root path: /OperativeNote/component/structuredBody/complicationsSection/complicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '55109-3' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ComplicationsSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '55109-3' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.18.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15453)/@code=&quot;55109-3&quot; Complications (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15454)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ComplicationsSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.18.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15453)/@code=&quot;55109-3&quot; Complications (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15454)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservationEntry -->

<pattern id="p-OperativeNote_3A_ProblemObservationEntry_problemObservation_3_18_5_i-error_mdht" see="#p-OperativeNote_3A_ProblemObservationEntry_problemObservation_3_18_5_i-error_mdht" name="p-OperativeNote_3A_ProblemObservationEntry_problemObservation_3_18_5_i-error_mdht">
		<!--
			UML path: /ComplicationsSection/entry
			UML root path: /OperativeNote/component/structuredBody/complicationsSection/complicationsSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']/cda:entry">
		<!--
			OCL: self.observation->select(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::ProblemObservation))->size() >= 0
			Constraint name: ComplicationsSectionProblemObservationEntryProblemObservation
		-->
	<assert test="count(cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']) &gt;= 0">Error: OperativeNote - 3.18.5.i problemObservation
		Conformance: MAY contain zero or more [0..*] observation (CONF:8795, CONF:8796)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_statusCode_4_114_8-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_statusCode_4_114_8-error_mdht" name="p-OperativeNote_3A_ProblemObservation_statusCode_4_114_8-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: true
			Constraint name: ProblemObservationStatusCodeP
		-->
	<assert test="true()">Error: OperativeNote - 4.114.8 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot; Completed (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:9049, R2.1=CONF:1198-9049)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed'
			Constraint name: ProblemObservationStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: OperativeNote - 4.114.8 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot; Completed (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:9049, R2.1=CONF:1198-9049)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_13-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_13-error_mdht" name="p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_13-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::ProblemObservation::HealthStatusObservationEntryRelationship))
			Constraint name: ProblemObservationEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: OperativeNote - 4.114.13 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_code_4_114_6-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_code_4_114_6-error_mdht" name="p-OperativeNote_3A_ProblemObservation_code_4_114_6-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProblemObservationCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 4.114.6 Problem Type
		Conformance: SHALL contain exactly one [1..1] code (Problem Type), which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2008-12-18 (CONF:9045)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and (value.code = '404684003' or value.code = '409586006' or value.code = '282291009' or value.code = '64572001' or value.code = '248536006' or value.code = '418799008' or value.code = '55607006' or value.code = '373930000')
			Constraint name: ProblemObservationCode
		-->
	<assert test="cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.96' and (@code = '404684003' or @code = '409586006' or @code = '282291009' or @code = '64572001' or @code = '248536006' or @code = '418799008' or @code = '55607006' or @code = '373930000')]">Error: OperativeNote - 4.114.6 Problem Type
		Conformance: SHALL contain exactly one [1..1] code (Problem Type), which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2008-12-18 (CONF:9045)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_classCode_4_115_2-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_classCode_4_115_2-error_mdht" name="p-OperativeNote_3A_ProblemObservation_classCode_4_115_2-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: ProblemObservationClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: OperativeNote - 4.115.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:9041, R2.1=CONF:1198-9041)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_id_4_66_5-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_id_4_66_5-error_mdht" name="p-OperativeNote_3A_ProblemObservation_id_4_66_5-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: ProblemObservationId
		-->
	<assert test="cda:id">Error: OperativeNote - 4.66.5 id
		Conformance: SHALL contain at least one [1..*] id (CONF:9043, R2.1=CONF:1198-9043)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_moodCode_4_115_3-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_moodCode_4_115_3-error_mdht" name="p-OperativeNote_3A_ProblemObservation_moodCode_4_115_3-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: ProblemObservationMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: OperativeNote - 4.115.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:9042, R2.1=CONF:1198-9042)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_ProblemObservationValueNullFlavor_4_114_14-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_ProblemObservationValueNullFlavor_4_114_14-error_mdht" name="p-OperativeNote_3A_ProblemObservation_ProblemObservationValueNullFlavor_4_114_14-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.value->forAll(val | not val.isNullFlavorUndefined())
			Constraint name: ProblemObservationValueNullFlavor
		-->
	<assert test="not(cda:value[not(@nullFlavor)])">Error: OperativeNote - 4.114.14 ProblemObservationValueNullFlavor
		Conformance: value MAY contain zero or one [0..1] @nullFlavor (CONF:10141)
		Analysis: value MAY contain zero or one [0..1] @nullFlavor
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_ProblemObservationValueTranslation_4_114_15-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_ProblemObservationValueTranslation_4_114_15-error_mdht" name="p-OperativeNote_3A_ProblemObservation_ProblemObservationValueTranslation_4_114_15-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.value.oclAsType(datatypes::CD).translation->size()>0
			Constraint name: ProblemObservationValueTranslation
		-->
	<assert test="count(cda:value/./cda:translation) &gt; 0">Error: OperativeNote - 4.114.15 ProblemObservationValueTranslation
		Conformance: value MAY contain zero or more [0..*] translation (CONF:16749, R2.1=CONF:1198-16749)
		Analysis: value MAY contain zero or more [0..*] translation
		Validation message: n/a	</assert>
		<!--
			OCL: self.value.oclAsType(datatypes::CD).translation->size()>0 implies self.value.oclAsType(datatypes::CD).translation->forAll(code->size() = 1)
			Constraint name: ProblemObservationValueTranslationCode
		-->
	<assert test="not(count(cda:value/./cda:translation) &gt; 0) or not(cda:value/./cda:translation[not(count(@code) = 1)])">Error: OperativeNote - 4.114.15 ProblemObservationValueTranslation
		Conformance: value MAY contain zero or more [0..*] translation (CONF:16749, R2.1=CONF:1198-16749)
		Analysis: translation, if present, MAY contain zero or one [0..1] @code (CodeSystem: ICD10CM 2.16.840.1.113883.6.90 STATIC)
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_11-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_11-error_mdht" name="p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_11-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::ProblemObservation::AgeObservationEntryRelationship))
			Constraint name: ProblemObservationEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: OperativeNote - 4.114.11 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_negationInd_4_114_4-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_negationInd_4_114_4-error_mdht" name="p-OperativeNote_3A_ProblemObservation_negationInd_4_114_4-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: (not self.negationInd.oclIsUndefined()) implies (not self.negationInd.oclIsUndefined())
			Constraint name: ProblemObservationNegationInd
		-->
	<assert test="not(@negationInd) or @negationInd">Error: OperativeNote - 4.114.4 negationInd
		Conformance: MAY contain zero or one [0..1] @negationInd (CONF:10139)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_12-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_12-error_mdht" name="p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_12-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::ProblemObservation::ProblemStatusEntryRelationship))
			Constraint name: ProblemObservationEntryRelationship
		-->
	<assert test="count(cda:entryRelationship)=1">Error: OperativeNote - 4.114.12 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_text_4_114_7-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_text_4_114_7-error_mdht" name="p-OperativeNote_3A_ProblemObservation_text_4_114_7-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: ((not self.text.oclIsUndefined()) and self.text.isNullFlavorUndefined()) implies (not self.text.oclIsUndefined())
			Constraint name: ProblemObservationText
		-->
	<assert test="not(cda:text and not(cda:text/@nullFlavor)) or cda:text">Error: OperativeNote - 4.114.7 Problem Name
		Conformance: SHOULD contain zero or one [0..1] text (Problem Name) (CONF:9185)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_effectiveTime_4_114_9-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_effectiveTime_4_114_9-error_mdht" name="p-OperativeNote_3A_ProblemObservation_effectiveTime_4_114_9-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: ((not self.effectiveTime.oclIsUndefined()) and self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())
			Constraint name: ProblemObservationEffectiveTime
		-->
	<assert test="not(cda:effectiveTime and not(cda:effectiveTime/@nullFlavor)) or cda:effectiveTime">Error: OperativeNote - 4.114.9 Problem Date
		Conformance: SHOULD contain zero or one [0..1] effectiveTime (Problem Date) (CONF:9050)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_value_4_114_10-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_value_4_114_10-error_mdht" name="p-OperativeNote_3A_ProblemObservation_value_4_114_10-error_mdht">
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
	<assert test="count(cda:value) = 1 and not(cda:value[not(. and @xsi:type='CD' and @codeSystem = '2.16.840.1.113883.6.96' and @code)])">Error: OperativeNote - 4.114.10 Problem Code
		Conformance: SHALL contain exactly one [1..1] value (Problem Code) with @xsi:type=&quot;CD&quot;, which SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:9058)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | element.oclIsTypeOf(datatypes::CD))
			Constraint name: ProblemObservationValueP
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(@xsi:type='CD')])">Error: OperativeNote - 4.114.10 Problem Code
		Conformance: SHALL contain exactly one [1..1] value (Problem Code) with @xsi:type=&quot;CD&quot;, which SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:9058)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservation: 2.16.840.1.113883.10.20.22.4.4 -->

<pattern id="p-OperativeNote_3A_ProblemObservation_templateId_4_114_1-error_mdht" see="#p-OperativeNote_3A_ProblemObservation_templateId_4_114_1-error_mdht" name="p-OperativeNote_3A_ProblemObservation_templateId_4_114_1-error_mdht">
		<!--
			UML path: /ProblemObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.4')
			Constraint name: ProblemObservationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4'">Error: OperativeNote - 4.114.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:14926, CONF:14927 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.4&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservationEntryRelationship -->

<pattern id="p-OperativeNote_3A_AgeObservationEntryRelationship_ageObservation_4_114_11_i-error_mdht" see="#p-OperativeNote_3A_AgeObservationEntryRelationship_ageObservation_4_114_11_i-error_mdht" name="p-OperativeNote_3A_AgeObservationEntryRelationship_ageObservation_4_114_11_i-error_mdht">
		<!--
			UML path: /ProblemObservation/entryRelationship
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship">
		<!--
			OCL: self.observation->select(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::AgeObservation))->size() <= 1
			Constraint name: ProblemObservationAgeObservationEntryRelationshipAgeObservation
		-->
	<assert test="count(cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']) &lt;= 1">Error: OperativeNote - 4.114.11.i ageObservation
		Conformance: MAY contain zero or one [0..1] observation (CONF:9059, CONF:9060, CONF:15590, R2.1=CONF:1198-9059, R2.1=CONF:1198-9060, R2.1=CONF:1198-15590)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-OperativeNote_3A_AgeObservation_templateId_4_6_1-error_mdht" see="#p-OperativeNote_3A_AgeObservation_templateId_4_6_1-error_mdht" name="p-OperativeNote_3A_AgeObservation_templateId_4_6_1-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.31')
			Constraint name: AgeObservationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31'">Error: OperativeNote - 4.6.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7899 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.31&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-OperativeNote_3A_AgeObservation_value_4_6_6-error_mdht" see="#p-OperativeNote_3A_AgeObservation_value_4_6_6-error_mdht" name="p-OperativeNote_3A_AgeObservation_value_4_6_6-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: self.value->size() = 1 and self.value->forAll(element | element.oclIsTypeOf(datatypes::PQ))
			Constraint name: AgeObservationValue
		-->
	<assert test="count(cda:value) = 1 and not(cda:value[not(@xsi:type='PQ')])">Error: OperativeNote - 4.6.6 value
		Conformance: SHALL contain exactly one [1..1] value with @xsi:type=&quot;PQ&quot; (CONF:7617)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-OperativeNote_3A_AgeObservation_code_4_6_4-error_mdht" see="#p-OperativeNote_3A_AgeObservation_code_4_6_4-error_mdht" name="p-OperativeNote_3A_AgeObservation_code_4_6_4-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: AgeObservationCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 4.6.4 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:7615)/@code=&quot;445518008&quot; Age At Onset (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:16776)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = '445518008' and value.codeSystem = '2.16.840.1.113883.6.96'
			Constraint name: AgeObservationCode
		-->
	<assert test="cda:code and cda:code[@code = '445518008' and @codeSystem = '2.16.840.1.113883.6.96']">Error: OperativeNote - 4.6.4 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:7615)/@code=&quot;445518008&quot; Age At Onset (CodeSystem: 2.16.840.1.113883.6.96 SNOMEDCT) (CONF:16776)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-OperativeNote_3A_AgeObservation_AgeObservationValueUnits_4_6_7-error_mdht" see="#p-OperativeNote_3A_AgeObservation_AgeObservationValueUnits_4_6_7-error_mdht" name="p-OperativeNote_3A_AgeObservation_AgeObservationValueUnits_4_6_7-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: self.value.oclAsType(datatypes::PQ).unit->size() = 1
			Constraint name: AgeObservationValueUnits
		-->
	<assert test="count(cda:value/./@unit) = 1">Error: OperativeNote - 4.6.7 AgeObservationValueUnits
		Conformance: This value SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet AgePQ_UCUM 2.16.840.1.113883.11.20.9.21 DYNAMIC (CONF:7618)
		Analysis: This value SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet AgePQ_UCUM 2.16.840.1.113883.11.20.9.21 DYNAMIC
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-OperativeNote_3A_AgeObservation_moodCode_4_6_3-error_mdht" see="#p-OperativeNote_3A_AgeObservation_moodCode_4_6_3-error_mdht" name="p-OperativeNote_3A_AgeObservation_moodCode_4_6_3-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: AgeObservationMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: OperativeNote - 4.6.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7614)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-OperativeNote_3A_AgeObservation_statusCode_4_6_5-error_mdht" see="#p-OperativeNote_3A_AgeObservation_statusCode_4_6_5-error_mdht" name="p-OperativeNote_3A_AgeObservation_statusCode_4_6_5-error_mdht">
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
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: OperativeNote - 4.6.5 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (CONF:15965)/@code=&quot;completed&quot; Completed (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:15966)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined()
			Constraint name: AgeObservationStatusCodeP
		-->
	<assert test="cda:statusCode">Error: OperativeNote - 4.6.5 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode (CONF:15965)/@code=&quot;completed&quot; Completed (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:15966)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AgeObservation: 2.16.840.1.113883.10.20.22.4.31 -->

<pattern id="p-OperativeNote_3A_AgeObservation_classCode_4_6_2-error_mdht" see="#p-OperativeNote_3A_AgeObservation_classCode_4_6_2-error_mdht" name="p-OperativeNote_3A_AgeObservation_classCode_4_6_2-error_mdht">
		<!--
			UML path: /AgeObservation
			UML root path: /ContinuityOfCareDocument/component/structuredBody/problemSection/problemSection/entry/problemConcern/entryRelationship/problemObservation/entryRelationship/ageObservation
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.5.1']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.3']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.31']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: AgeObservationClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: OperativeNote - 4.6.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7613)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_postoperativeDiagnosisSection_2_13_5_i_c_1-error_mdht" see="#p-OperativeNote_2_Component_postoperativeDiagnosisSection_2_13_5_i_c_1-error_mdht" name="p-OperativeNote_2_Component_postoperativeDiagnosisSection_2_13_5_i_c_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/postoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/postoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35']">
		<!--
			OCL: self.section->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::PostoperativeDiagnosisSection))
			Constraint name: OperativeNoteComponentStructuredBodyComponentPostoperativeDiagnosisSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35'])=1">Error: OperativeNote - 2.13.5.i.c.1 postoperativeDiagnosisSection
		Conformance: SHALL contain exactly one [1..1] section (CONF:9913)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PostoperativeDiagnosisSection: 2.16.840.1.113883.10.20.22.2.35 -->

<pattern id="p-OperativeNote_2_PostoperativeDiagnosisSection_text_3_83_3-error_mdht" see="#p-OperativeNote_2_PostoperativeDiagnosisSection_text_3_83_3-error_mdht" name="p-OperativeNote_2_PostoperativeDiagnosisSection_text_3_83_3-error_mdht">
		<!--
			UML path: /PostoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/postoperativeDiagnosisSection/postoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: PostoperativeDiagnosisSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.83.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8104)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PostoperativeDiagnosisSection: 2.16.840.1.113883.10.20.22.2.35 -->

<pattern id="p-OperativeNote_2_PostoperativeDiagnosisSection_templateId_3_83_1-error_mdht" see="#p-OperativeNote_2_PostoperativeDiagnosisSection_templateId_3_83_1-error_mdht" name="p-OperativeNote_2_PostoperativeDiagnosisSection_templateId_3_83_1-error_mdht">
		<!--
			UML path: /PostoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/postoperativeDiagnosisSection/postoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.35')
			Constraint name: PostoperativeDiagnosisSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35'">Error: OperativeNote - 3.83.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8101, CONF:10437 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.35&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PostoperativeDiagnosisSection: 2.16.840.1.113883.10.20.22.2.35 -->

<pattern id="p-OperativeNote_2_PostoperativeDiagnosisSection_title_3_83_4-error_mdht" see="#p-OperativeNote_2_PostoperativeDiagnosisSection_title_3_83_4-error_mdht" name="p-OperativeNote_2_PostoperativeDiagnosisSection_title_3_83_4-error_mdht">
		<!--
			UML path: /PostoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/postoperativeDiagnosisSection/postoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: PostoperativeDiagnosisSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.83.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8103)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PostoperativeDiagnosisSection: 2.16.840.1.113883.10.20.22.2.35 -->

<pattern id="p-OperativeNote_2_PostoperativeDiagnosisSection_code_3_83_2-error_mdht" see="#p-OperativeNote_2_PostoperativeDiagnosisSection_code_3_83_2-error_mdht" name="p-OperativeNote_2_PostoperativeDiagnosisSection_code_3_83_2-error_mdht">
		<!--
			UML path: /PostoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/postoperativeDiagnosisSection/postoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '10218-6' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: PostoperativeDiagnosisSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '10218-6' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.83.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15401)/@code=&quot;10218-6&quot; Postoperative Diagnosis (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15402)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: PostoperativeDiagnosisSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.83.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15401)/@code=&quot;10218-6&quot; Postoperative Diagnosis (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15402)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_preoperativeDiagnosisSection_2_13_5_i_d_1-error_mdht" see="#p-OperativeNote_2_Component_preoperativeDiagnosisSection_2_13_5_i_d_1-error_mdht" name="p-OperativeNote_2_Component_preoperativeDiagnosisSection_2_13_5_i_d_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">
		<!--
			OCL: self.section->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::PreoperativeDiagnosisSection))
			Constraint name: OperativeNoteComponentStructuredBodyComponentPreoperativeDiagnosisSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34'])=1">Error: OperativeNote - 2.13.5.i.d.1 preoperativeDiagnosisSection
		Conformance: SHALL contain exactly one [1..1] section (CONF:9888)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosisSection: 2.16.840.1.113883.10.20.22.2.34 -->

<pattern id="p-OperativeNote_2_PreoperativeDiagnosisSection_text_3_87_4-error_mdht" see="#p-OperativeNote_2_PreoperativeDiagnosisSection_text_3_87_4-error_mdht" name="p-OperativeNote_2_PreoperativeDiagnosisSection_text_3_87_4-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: PreoperativeDiagnosisSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.87.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8100, R2.1=CONF:1198-8100)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosisSection: 2.16.840.1.113883.10.20.22.2.34 -->

<pattern id="p-OperativeNote_3A_PreoperativeDiagnosisSection_entry_3_86_5-error_mdht" see="#p-OperativeNote_3A_PreoperativeDiagnosisSection_entry_3_86_5-error_mdht" name="p-OperativeNote_3A_PreoperativeDiagnosisSection_entry_3_86_5-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PreoperativeDiagnosisSection::PreoperativeDiagnosisEntry))
			Constraint name: PreoperativeDiagnosisSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.86.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosisSection: 2.16.840.1.113883.10.20.22.2.34 -->

<pattern id="p-OperativeNote_2_PreoperativeDiagnosisSection_templateId_3_86_1-error_mdht" see="#p-OperativeNote_2_PreoperativeDiagnosisSection_templateId_3_86_1-error_mdht" name="p-OperativeNote_2_PreoperativeDiagnosisSection_templateId_3_86_1-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.34')
			Constraint name: PreoperativeDiagnosisSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34'">Error: OperativeNote - 3.86.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8097, CONF:10439 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.34&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosisSection: 2.16.840.1.113883.10.20.22.2.34 -->

<pattern id="p-OperativeNote_2_PreoperativeDiagnosisSection_code_3_86_2-error_mdht" see="#p-OperativeNote_2_PreoperativeDiagnosisSection_code_3_86_2-error_mdht" name="p-OperativeNote_2_PreoperativeDiagnosisSection_code_3_86_2-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '10219-4' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: PreoperativeDiagnosisSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '10219-4' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.86.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15405)/@code=&quot;10219-4&quot; Preoperative Diagnosis (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15406)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: PreoperativeDiagnosisSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.86.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15405)/@code=&quot;10219-4&quot; Preoperative Diagnosis (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15406)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosisSection: 2.16.840.1.113883.10.20.22.2.34 -->

<pattern id="p-OperativeNote_2_PreoperativeDiagnosisSection_title_3_87_3-error_mdht" see="#p-OperativeNote_2_PreoperativeDiagnosisSection_title_3_87_3-error_mdht" name="p-OperativeNote_2_PreoperativeDiagnosisSection_title_3_87_3-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosisSection
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: PreoperativeDiagnosisSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.87.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8099, R2.1=CONF:1198-8099)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosisEntry -->

<pattern id="p-OperativeNote_3A_PreoperativeDiagnosisEntry_preoperativeDiagnosis_3_86_5_i-error_mdht" see="#p-OperativeNote_3A_PreoperativeDiagnosisEntry_preoperativeDiagnosis_3_86_5_i-error_mdht" name="p-OperativeNote_3A_PreoperativeDiagnosisEntry_preoperativeDiagnosis_3_86_5_i-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosisSection/entry
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry">
		<!--
			OCL: self.act->select(act : cda::Act | not act.oclIsUndefined() and act.oclIsKindOf(consol::PreoperativeDiagnosis))->size() <= 1
			Constraint name: PreoperativeDiagnosisSectionPreoperativeDiagnosisEntryPreoperativeDiagnosis
		-->
	<assert test="count(cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']) &lt;= 1">Error: OperativeNote - 3.86.5.i preoperativeDiagnosis
		Conformance: SHOULD contain zero or one [0..1] act (CONF:10096, CONF:10097)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosis: 2.16.840.1.113883.10.20.22.4.65 -->

<pattern id="p-OperativeNote_3A_PreoperativeDiagnosis_templateId_4_108_1-error_mdht" see="#p-OperativeNote_3A_PreoperativeDiagnosis_templateId_4_108_1-error_mdht" name="p-OperativeNote_3A_PreoperativeDiagnosis_templateId_4_108_1-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosis
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection/entry/preoperativeDiagnosis
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.65')
			Constraint name: PreoperativeDiagnosisTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65'">Error: OperativeNote - 4.108.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:16770, CONF:16771 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.65&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosis: 2.16.840.1.113883.10.20.22.4.65 -->

<pattern id="p-OperativeNote_3A_PreoperativeDiagnosis_code_4_108_4-error_mdht" see="#p-OperativeNote_3A_PreoperativeDiagnosis_code_4_108_4-error_mdht" name="p-OperativeNote_3A_PreoperativeDiagnosis_code_4_108_4-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosis
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection/entry/preoperativeDiagnosis
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']">
		<!--
			OCL: true
			Constraint name: PreoperativeDiagnosisCodeP
		-->
	<assert test="true()">Error: OperativeNote - 4.108.4 code
		Conformance: SHALL contain exactly one [1..1] code/@code=&quot;10219-4&quot; Preoperative Diagnosis (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:10092)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.code = '10219-4' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: PreoperativeDiagnosisCode
		-->
	<assert test="cda:code and cda:code[@code = '10219-4' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 4.108.4 code
		Conformance: SHALL contain exactly one [1..1] code/@code=&quot;10219-4&quot; Preoperative Diagnosis (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:10092)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosis: 2.16.840.1.113883.10.20.22.4.65 -->

<pattern id="p-OperativeNote_3A_PreoperativeDiagnosis_entryRelationship_4_108_5-error_mdht" see="#p-OperativeNote_3A_PreoperativeDiagnosis_entryRelationship_4_108_5-error_mdht" name="p-OperativeNote_3A_PreoperativeDiagnosis_entryRelationship_4_108_5-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosis
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection/entry/preoperativeDiagnosis
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']">
		<!--
			OCL: self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(consol::PreoperativeDiagnosis::ProblemObservationEntryRelationship))
			Constraint name: PreoperativeDiagnosisEntryRelationship
		-->
	<assert test="count(cda:entryRelationship[cda:observation/cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4'])=1">Error: OperativeNote - 4.108.5 entryRelationship
		Conformance: SHALL contain exactly one [1..1] entryRelationship
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosis: 2.16.840.1.113883.10.20.22.4.65 -->

<pattern id="p-OperativeNote_3A_PreoperativeDiagnosis_classCode_4_109_2-error_mdht" see="#p-OperativeNote_3A_PreoperativeDiagnosis_classCode_4_109_2-error_mdht" name="p-OperativeNote_3A_PreoperativeDiagnosis_classCode_4_109_2-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosis
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection/entry/preoperativeDiagnosis
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']">
		<!--
			OCL: self.classCode=vocab::x_ActClassDocumentEntryAct::ACT
			Constraint name: PreoperativeDiagnosisClassCode
		-->
	<assert test="@classCode = 'ACT'">Error: OperativeNote - 4.109.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;ACT&quot; Act (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:10090, R2.1=CONF:1198-10090)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PreoperativeDiagnosis: 2.16.840.1.113883.10.20.22.4.65 -->

<pattern id="p-OperativeNote_3A_PreoperativeDiagnosis_moodCode_4_109_3-error_mdht" see="#p-OperativeNote_3A_PreoperativeDiagnosis_moodCode_4_109_3-error_mdht" name="p-OperativeNote_3A_PreoperativeDiagnosis_moodCode_4_109_3-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosis
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection/entry/preoperativeDiagnosis
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']">
		<!--
			OCL: self.moodCode=vocab::x_DocumentActMood::EVN
			Constraint name: PreoperativeDiagnosisMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: OperativeNote - 4.109.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:10091, R2.1=CONF:1198-10091)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservationEntryRelationship -->

<pattern id="p-OperativeNote_3A_ProblemObservationEntryRelationship_problemObservation_4_108_5_i-error_mdht" see="#p-OperativeNote_3A_ProblemObservationEntryRelationship_problemObservation_4_108_5_i-error_mdht" name="p-OperativeNote_3A_ProblemObservationEntryRelationship_problemObservation_4_108_5_i-error_mdht">
		<!--
			UML path: /PreoperativeDiagnosis/entryRelationship
			UML root path: /OperativeNote/component/structuredBody/preoperativeDiagnosisSection/preoperativeDiagnosisSection/entry/preoperativeDiagnosis/entryRelationship
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']/cda:entryRelationship">
		<!--
			OCL: self.observation->exists(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::ProblemObservation))
			Constraint name: PreoperativeDiagnosisProblemObservationEntryRelationshipProblemObservation
		-->
	<assert test="cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']">Error: OperativeNote - 4.108.5.i problemObservation
		Conformance: SHALL contain at least one [1..*] observation (CONF:10093, CONF:10094, CONF:15605)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_procedureEstimatedBloodLossSection_2_13_5_i_e_1-error_mdht" see="#p-OperativeNote_2_Component_procedureEstimatedBloodLossSection_2_13_5_i_e_1-error_mdht" name="p-OperativeNote_2_Component_procedureEstimatedBloodLossSection_2_13_5_i_e_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/procedureEstimatedBloodLossSection
			UML root path: /OperativeNote/component/structuredBody/procedureEstimatedBloodLossSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9']">
		<!--
			OCL: self.section->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ProcedureEstimatedBloodLossSection))
			Constraint name: OperativeNoteComponentStructuredBodyComponentProcedureEstimatedBloodLossSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9'])=1">Error: OperativeNote - 2.13.5.i.e.1 procedureEstimatedBloodLossSection
		Conformance: SHALL contain exactly one [1..1] section (CONF:9890)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureEstimatedBloodLossSection: 2.16.840.1.113883.10.20.18.2.9 -->

<pattern id="p-OperativeNote_2_ProcedureEstimatedBloodLossSection_title_3_94_4-error_mdht" see="#p-OperativeNote_2_ProcedureEstimatedBloodLossSection_title_3_94_4-error_mdht" name="p-OperativeNote_2_ProcedureEstimatedBloodLossSection_title_3_94_4-error_mdht">
		<!--
			UML path: /ProcedureEstimatedBloodLossSection
			UML root path: /OperativeNote/component/structuredBody/procedureEstimatedBloodLossSection/procedureEstimatedBloodLossSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ProcedureEstimatedBloodLossSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.94.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8076)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureEstimatedBloodLossSection: 2.16.840.1.113883.10.20.18.2.9 -->

<pattern id="p-OperativeNote_2_ProcedureEstimatedBloodLossSection_code_3_94_2-error_mdht" see="#p-OperativeNote_2_ProcedureEstimatedBloodLossSection_code_3_94_2-error_mdht" name="p-OperativeNote_2_ProcedureEstimatedBloodLossSection_code_3_94_2-error_mdht">
		<!--
			UML path: /ProcedureEstimatedBloodLossSection
			UML root path: /OperativeNote/component/structuredBody/procedureEstimatedBloodLossSection/procedureEstimatedBloodLossSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '59770-8' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ProcedureEstimatedBloodLossSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '59770-8' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.94.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15415)/@code=&quot;59770-8&quot; Procedure Estimated Blood Loss (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15416)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProcedureEstimatedBloodLossSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.94.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15415)/@code=&quot;59770-8&quot; Procedure Estimated Blood Loss (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15416)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureEstimatedBloodLossSection: 2.16.840.1.113883.10.20.18.2.9 -->

<pattern id="p-OperativeNote_2_ProcedureEstimatedBloodLossSection_templateId_3_94_1-error_mdht" see="#p-OperativeNote_2_ProcedureEstimatedBloodLossSection_templateId_3_94_1-error_mdht" name="p-OperativeNote_2_ProcedureEstimatedBloodLossSection_templateId_3_94_1-error_mdht">
		<!--
			UML path: /ProcedureEstimatedBloodLossSection
			UML root path: /OperativeNote/component/structuredBody/procedureEstimatedBloodLossSection/procedureEstimatedBloodLossSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.18.2.9')
			Constraint name: ProcedureEstimatedBloodLossSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9'">Error: OperativeNote - 3.94.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8074, CONF:10467 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.18.2.9&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureEstimatedBloodLossSection: 2.16.840.1.113883.10.20.18.2.9 -->

<pattern id="p-OperativeNote_2_ProcedureEstimatedBloodLossSection_text_3_94_3-error_mdht" see="#p-OperativeNote_2_ProcedureEstimatedBloodLossSection_text_3_94_3-error_mdht" name="p-OperativeNote_2_ProcedureEstimatedBloodLossSection_text_3_94_3-error_mdht">
		<!--
			UML path: /ProcedureEstimatedBloodLossSection
			UML root path: /OperativeNote/component/structuredBody/procedureEstimatedBloodLossSection/procedureEstimatedBloodLossSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ProcedureEstimatedBloodLossSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.94.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8077)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_procedureFindingsSection_2_13_5_i_f_1-error_mdht" see="#p-OperativeNote_2_Component_procedureFindingsSection_2_13_5_i_f_1-error_mdht" name="p-OperativeNote_2_Component_procedureFindingsSection_2_13_5_i_f_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/procedureFindingsSection
			UML root path: /OperativeNote/component/structuredBody/procedureFindingsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">
		<!--
			OCL: self.section->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ProcedureFindingsSection))
			Constraint name: OperativeNoteComponentStructuredBodyComponentProcedureFindingsSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28'])=1">Error: OperativeNote - 2.13.5.i.f.1 procedureFindingsSection
		Conformance: SHALL contain exactly one [1..1] section (CONF:9892)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureFindingsSection: 2.16.840.1.113883.10.20.22.2.28 -->

<pattern id="p-OperativeNote_2_ProcedureFindingsSection_templateId_3_95_1-error_mdht" see="#p-OperativeNote_2_ProcedureFindingsSection_templateId_3_95_1-error_mdht" name="p-OperativeNote_2_ProcedureFindingsSection_templateId_3_95_1-error_mdht">
		<!--
			UML path: /ProcedureFindingsSection
			UML root path: /OperativeNote/component/structuredBody/procedureFindingsSection/procedureFindingsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.28')
			Constraint name: ProcedureFindingsSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28'">Error: OperativeNote - 3.95.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8078 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.28&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureFindingsSection: 2.16.840.1.113883.10.20.22.2.28 -->

<pattern id="p-OperativeNote_2_ProcedureFindingsSection_code_3_95_2-error_mdht" see="#p-OperativeNote_2_ProcedureFindingsSection_code_3_95_2-error_mdht" name="p-OperativeNote_2_ProcedureFindingsSection_code_3_95_2-error_mdht">
		<!--
			UML path: /ProcedureFindingsSection
			UML root path: /OperativeNote/component/structuredBody/procedureFindingsSection/procedureFindingsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '59776-5' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ProcedureFindingsSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '59776-5' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.95.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15417)/@code=&quot;59776-5&quot; Procedure Findings (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15418)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProcedureFindingsSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.95.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15417)/@code=&quot;59776-5&quot; Procedure Findings (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15418)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureFindingsSection: 2.16.840.1.113883.10.20.22.2.28 -->

<pattern id="p-OperativeNote_2_ProcedureFindingsSection_title_3_96_3-error_mdht" see="#p-OperativeNote_2_ProcedureFindingsSection_title_3_96_3-error_mdht" name="p-OperativeNote_2_ProcedureFindingsSection_title_3_96_3-error_mdht">
		<!--
			UML path: /ProcedureFindingsSection
			UML root path: /OperativeNote/component/structuredBody/procedureFindingsSection/procedureFindingsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ProcedureFindingsSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.96.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8080, R2.1=CONF:1198-8080)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureFindingsSection: 2.16.840.1.113883.10.20.22.2.28 -->

<pattern id="p-OperativeNote_2_ProcedureFindingsSection_text_3_96_4-error_mdht" see="#p-OperativeNote_2_ProcedureFindingsSection_text_3_96_4-error_mdht" name="p-OperativeNote_2_ProcedureFindingsSection_text_3_96_4-error_mdht">
		<!--
			UML path: /ProcedureFindingsSection
			UML root path: /OperativeNote/component/structuredBody/procedureFindingsSection/procedureFindingsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ProcedureFindingsSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.96.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8081, R2.1=CONF:1198-8081)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureFindingsSection: 2.16.840.1.113883.10.20.22.2.28 -->

<pattern id="p-OperativeNote_3A_ProcedureFindingsSection_entry_3_95_5-error_mdht" see="#p-OperativeNote_3A_ProcedureFindingsSection_entry_3_95_5-error_mdht" name="p-OperativeNote_3A_ProcedureFindingsSection_entry_3_95_5-error_mdht">
		<!--
			UML path: /ProcedureFindingsSection
			UML root path: /OperativeNote/component/structuredBody/procedureFindingsSection/procedureFindingsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::ProcedureFindingsSection::ProblemObservationEntry))
			Constraint name: ProcedureFindingsSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.95.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProblemObservationEntry -->

<pattern id="p-OperativeNote_3A_ProblemObservationEntry_problemObservation_3_95_5_i-error_mdht" see="#p-OperativeNote_3A_ProblemObservationEntry_problemObservation_3_95_5_i-error_mdht" name="p-OperativeNote_3A_ProblemObservationEntry_problemObservation_3_95_5_i-error_mdht">
		<!--
			UML path: /ProcedureFindingsSection/entry
			UML root path: /OperativeNote/component/structuredBody/procedureFindingsSection/procedureFindingsSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']/cda:entry">
		<!--
			OCL: self.observation->select(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::ProblemObservation))->size() >= 0
			Constraint name: ProcedureFindingsSectionProblemObservationEntryProblemObservation
		-->
	<assert test="count(cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.4']) &gt;= 0">Error: OperativeNote - 3.95.5.i problemObservation
		Conformance: MAY contain zero or more [0..*] observation (CONF:8090, CONF:8091)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_procedureSpecimensTakenSection_2_13_5_i_g_1-error_mdht" see="#p-OperativeNote_2_Component_procedureSpecimensTakenSection_2_13_5_i_g_1-error_mdht" name="p-OperativeNote_2_Component_procedureSpecimensTakenSection_2_13_5_i_g_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/procedureSpecimensTakenSection
			UML root path: /OperativeNote/component/structuredBody/procedureSpecimensTakenSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31']">
		<!--
			OCL: self.section->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ProcedureSpecimensTakenSection))
			Constraint name: OperativeNoteComponentStructuredBodyComponentProcedureSpecimensTakenSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31'])=1">Error: OperativeNote - 2.13.5.i.g.1 procedureSpecimensTakenSection
		Conformance: SHALL contain exactly one [1..1] section (CONF:9894)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureSpecimensTakenSection: 2.16.840.1.113883.10.20.22.2.31 -->

<pattern id="p-OperativeNote_2_ProcedureSpecimensTakenSection_templateId_3_100_1-error_mdht" see="#p-OperativeNote_2_ProcedureSpecimensTakenSection_templateId_3_100_1-error_mdht" name="p-OperativeNote_2_ProcedureSpecimensTakenSection_templateId_3_100_1-error_mdht">
		<!--
			UML path: /ProcedureSpecimensTakenSection
			UML root path: /OperativeNote/component/structuredBody/procedureSpecimensTakenSection/procedureSpecimensTakenSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.31')
			Constraint name: ProcedureSpecimensTakenSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31'">Error: OperativeNote - 3.100.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8086, CONF:10446 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.31&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureSpecimensTakenSection: 2.16.840.1.113883.10.20.22.2.31 -->

<pattern id="p-OperativeNote_2_ProcedureSpecimensTakenSection_text_3_100_3-error_mdht" see="#p-OperativeNote_2_ProcedureSpecimensTakenSection_text_3_100_3-error_mdht" name="p-OperativeNote_2_ProcedureSpecimensTakenSection_text_3_100_3-error_mdht">
		<!--
			UML path: /ProcedureSpecimensTakenSection
			UML root path: /OperativeNote/component/structuredBody/procedureSpecimensTakenSection/procedureSpecimensTakenSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ProcedureSpecimensTakenSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.100.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8089)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureSpecimensTakenSection: 2.16.840.1.113883.10.20.22.2.31 -->

<pattern id="p-OperativeNote_2_ProcedureSpecimensTakenSection_title_3_100_4-error_mdht" see="#p-OperativeNote_2_ProcedureSpecimensTakenSection_title_3_100_4-error_mdht" name="p-OperativeNote_2_ProcedureSpecimensTakenSection_title_3_100_4-error_mdht">
		<!--
			UML path: /ProcedureSpecimensTakenSection
			UML root path: /OperativeNote/component/structuredBody/procedureSpecimensTakenSection/procedureSpecimensTakenSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ProcedureSpecimensTakenSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.100.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8088)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureSpecimensTakenSection: 2.16.840.1.113883.10.20.22.2.31 -->

<pattern id="p-OperativeNote_2_ProcedureSpecimensTakenSection_code_3_100_2-error_mdht" see="#p-OperativeNote_2_ProcedureSpecimensTakenSection_code_3_100_2-error_mdht" name="p-OperativeNote_2_ProcedureSpecimensTakenSection_code_3_100_2-error_mdht">
		<!--
			UML path: /ProcedureSpecimensTakenSection
			UML root path: /OperativeNote/component/structuredBody/procedureSpecimensTakenSection/procedureSpecimensTakenSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '59773-2' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ProcedureSpecimensTakenSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '59773-2' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.100.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15421)/@code=&quot;59773-2&quot; Procedure Specimens Taken (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15422)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProcedureSpecimensTakenSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.100.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15421)/@code=&quot;59773-2&quot; Procedure Specimens Taken (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15422)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_procedureDescriptionSection_2_13_5_i_h_1-error_mdht" see="#p-OperativeNote_2_Component_procedureDescriptionSection_2_13_5_i_h_1-error_mdht" name="p-OperativeNote_2_Component_procedureDescriptionSection_2_13_5_i_h_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/procedureDescriptionSection
			UML root path: /OperativeNote/component/structuredBody/procedureDescriptionSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27']">
		<!--
			OCL: self.section->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ProcedureDescriptionSection))
			Constraint name: OperativeNoteComponentStructuredBodyComponentProcedureDescriptionSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27'])=1">Error: OperativeNote - 2.13.5.i.h.1 procedureDescriptionSection
		Conformance: SHALL contain exactly one [1..1] section (CONF:9896)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureDescriptionSection: 2.16.840.1.113883.10.20.22.2.27 -->

<pattern id="p-OperativeNote_2_ProcedureDescriptionSection_text_3_92_3-error_mdht" see="#p-OperativeNote_2_ProcedureDescriptionSection_text_3_92_3-error_mdht" name="p-OperativeNote_2_ProcedureDescriptionSection_text_3_92_3-error_mdht">
		<!--
			UML path: /ProcedureDescriptionSection
			UML root path: /OperativeNote/component/structuredBody/procedureDescriptionSection/procedureDescriptionSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ProcedureDescriptionSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.92.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8065)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureDescriptionSection: 2.16.840.1.113883.10.20.22.2.27 -->

<pattern id="p-OperativeNote_2_ProcedureDescriptionSection_templateId_3_92_1-error_mdht" see="#p-OperativeNote_2_ProcedureDescriptionSection_templateId_3_92_1-error_mdht" name="p-OperativeNote_2_ProcedureDescriptionSection_templateId_3_92_1-error_mdht">
		<!--
			UML path: /ProcedureDescriptionSection
			UML root path: /OperativeNote/component/structuredBody/procedureDescriptionSection/procedureDescriptionSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.27')
			Constraint name: ProcedureDescriptionSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27'">Error: OperativeNote - 3.92.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8062, CONF:10442 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.27&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureDescriptionSection: 2.16.840.1.113883.10.20.22.2.27 -->

<pattern id="p-OperativeNote_2_ProcedureDescriptionSection_code_3_92_2-error_mdht" see="#p-OperativeNote_2_ProcedureDescriptionSection_code_3_92_2-error_mdht" name="p-OperativeNote_2_ProcedureDescriptionSection_code_3_92_2-error_mdht">
		<!--
			UML path: /ProcedureDescriptionSection
			UML root path: /OperativeNote/component/structuredBody/procedureDescriptionSection/procedureDescriptionSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '29554-3' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ProcedureDescriptionSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '29554-3' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.92.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15411)/@code=&quot;29554-3&quot; Procedure Description (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15412)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProcedureDescriptionSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.92.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15411)/@code=&quot;29554-3&quot; Procedure Description (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15412)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureDescriptionSection: 2.16.840.1.113883.10.20.22.2.27 -->

<pattern id="p-OperativeNote_2_ProcedureDescriptionSection_title_3_92_4-error_mdht" see="#p-OperativeNote_2_ProcedureDescriptionSection_title_3_92_4-error_mdht" name="p-OperativeNote_2_ProcedureDescriptionSection_title_3_92_4-error_mdht">
		<!--
			UML path: /ProcedureDescriptionSection
			UML root path: /OperativeNote/component/structuredBody/procedureDescriptionSection/procedureDescriptionSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ProcedureDescriptionSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.92.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8064)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_procedureImplantsSection_2_13_5_i_i_1-error_mdht" see="#p-OperativeNote_2_Component_procedureImplantsSection_2_13_5_i_i_1-error_mdht" name="p-OperativeNote_2_Component_procedureImplantsSection_2_13_5_i_i_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/procedureImplantsSection
			UML root path: /OperativeNote/component/structuredBody/procedureImplantsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ProcedureImplantsSection))->size() <= 1
			Constraint name: OperativeNoteComponentStructuredBodyComponentProcedureImplantsSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.40']) &lt;= 1">Error: OperativeNote - 2.13.5.i.i.1 procedureImplantsSection
		Conformance: MAY contain zero or one [0..1] section (CONF:9898)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureImplantsSection: 2.16.840.1.113883.10.20.22.2.40 -->

<pattern id="p-OperativeNote_2_ProcedureImplantsSection_title_3_97_4-error_mdht" see="#p-OperativeNote_2_ProcedureImplantsSection_title_3_97_4-error_mdht" name="p-OperativeNote_2_ProcedureImplantsSection_title_3_97_4-error_mdht">
		<!--
			UML path: /ProcedureImplantsSection
			UML root path: /OperativeNote/component/structuredBody/procedureImplantsSection/procedureImplantsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.40']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ProcedureImplantsSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.97.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8180)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureImplantsSection: 2.16.840.1.113883.10.20.22.2.40 -->

<pattern id="p-OperativeNote_2_ProcedureImplantsSection_code_3_97_2-error_mdht" see="#p-OperativeNote_2_ProcedureImplantsSection_code_3_97_2-error_mdht" name="p-OperativeNote_2_ProcedureImplantsSection_code_3_97_2-error_mdht">
		<!--
			UML path: /ProcedureImplantsSection
			UML root path: /OperativeNote/component/structuredBody/procedureImplantsSection/procedureImplantsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.40']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '59771-6' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ProcedureImplantsSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '59771-6' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.97.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15373)/@code=&quot;59771-6&quot; Procedure Implants (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15374)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProcedureImplantsSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.97.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15373)/@code=&quot;59771-6&quot; Procedure Implants (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15374)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureImplantsSection: 2.16.840.1.113883.10.20.22.2.40 -->

<pattern id="p-OperativeNote_2_ProcedureImplantsSection_templateId_3_97_1-error_mdht" see="#p-OperativeNote_2_ProcedureImplantsSection_templateId_3_97_1-error_mdht" name="p-OperativeNote_2_ProcedureImplantsSection_templateId_3_97_1-error_mdht">
		<!--
			UML path: /ProcedureImplantsSection
			UML root path: /OperativeNote/component/structuredBody/procedureImplantsSection/procedureImplantsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.40']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.40')
			Constraint name: ProcedureImplantsSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.40'">Error: OperativeNote - 3.97.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8178, CONF:10444 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.40&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureImplantsSection: 2.16.840.1.113883.10.20.22.2.40 -->

<pattern id="p-OperativeNote_2_ProcedureImplantsSection_text_3_97_3-error_mdht" see="#p-OperativeNote_2_ProcedureImplantsSection_text_3_97_3-error_mdht" name="p-OperativeNote_2_ProcedureImplantsSection_text_3_97_3-error_mdht">
		<!--
			UML path: /ProcedureImplantsSection
			UML root path: /OperativeNote/component/structuredBody/procedureImplantsSection/procedureImplantsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.40']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ProcedureImplantsSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.97.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8181)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_operativeNoteFluidSection_2_13_5_i_j_1-error_mdht" see="#p-OperativeNote_2_Component_operativeNoteFluidSection_2_13_5_i_j_1-error_mdht" name="p-OperativeNote_2_Component_operativeNoteFluidSection_2_13_5_i_j_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/operativeNoteFluidSection
			UML root path: /OperativeNote/component/structuredBody/operativeNoteFluidSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::OperativeNoteFluidSection))->size() <= 1
			Constraint name: OperativeNoteComponentStructuredBodyComponentOperativeNoteFluidSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.12']) &lt;= 1">Error: OperativeNote - 2.13.5.i.j.1 operativeNoteFluidSection
		Conformance: MAY contain zero or one [0..1] section (CONF:9900)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNoteFluidSection: 2.16.840.1.113883.10.20.7.12 -->

<pattern id="p-OperativeNote_2_OperativeNoteFluidSection_templateId_3_72_1-error_mdht" see="#p-OperativeNote_2_OperativeNoteFluidSection_templateId_3_72_1-error_mdht" name="p-OperativeNote_2_OperativeNoteFluidSection_templateId_3_72_1-error_mdht">
		<!--
			UML path: /OperativeNoteFluidSection
			UML root path: /OperativeNote/component/structuredBody/operativeNoteFluidSection/operativeNoteFluidSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.12']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.7.12')
			Constraint name: OperativeNoteFluidSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.7.12'">Error: OperativeNote - 3.72.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8030, CONF:10463 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.7.12&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNoteFluidSection: 2.16.840.1.113883.10.20.7.12 -->

<pattern id="p-OperativeNote_2_OperativeNoteFluidSection_text_3_72_3-error_mdht" see="#p-OperativeNote_2_OperativeNoteFluidSection_text_3_72_3-error_mdht" name="p-OperativeNote_2_OperativeNoteFluidSection_text_3_72_3-error_mdht">
		<!--
			UML path: /OperativeNoteFluidSection
			UML root path: /OperativeNote/component/structuredBody/operativeNoteFluidSection/operativeNoteFluidSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.12']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: OperativeNoteFluidSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.72.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8033)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNoteFluidSection: 2.16.840.1.113883.10.20.7.12 -->

<pattern id="p-OperativeNote_2_OperativeNoteFluidSection_title_3_72_4-error_mdht" see="#p-OperativeNote_2_OperativeNoteFluidSection_title_3_72_4-error_mdht" name="p-OperativeNote_2_OperativeNoteFluidSection_title_3_72_4-error_mdht">
		<!--
			UML path: /OperativeNoteFluidSection
			UML root path: /OperativeNote/component/structuredBody/operativeNoteFluidSection/operativeNoteFluidSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.12']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: OperativeNoteFluidSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.72.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8032)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNoteFluidSection: 2.16.840.1.113883.10.20.7.12 -->

<pattern id="p-OperativeNote_2_OperativeNoteFluidSection_code_3_72_2-error_mdht" see="#p-OperativeNote_2_OperativeNoteFluidSection_code_3_72_2-error_mdht" name="p-OperativeNote_2_OperativeNoteFluidSection_code_3_72_2-error_mdht">
		<!--
			UML path: /OperativeNoteFluidSection
			UML root path: /OperativeNote/component/structuredBody/operativeNoteFluidSection/operativeNoteFluidSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.12']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '10216-0' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: OperativeNoteFluidSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '10216-0' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.72.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15391)/@code=&quot;10216-0&quot; Operative Note Fluids (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15392)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: OperativeNoteFluidSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.72.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15391)/@code=&quot;10216-0&quot; Operative Note Fluids (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15392)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_operativeNoteSurgicalProcedureSection_2_13_5_i_k_1-error_mdht" see="#p-OperativeNote_2_Component_operativeNoteSurgicalProcedureSection_2_13_5_i_k_1-error_mdht" name="p-OperativeNote_2_Component_operativeNoteSurgicalProcedureSection_2_13_5_i_k_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/operativeNoteSurgicalProcedureSection
			UML root path: /OperativeNote/component/structuredBody/operativeNoteSurgicalProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::OperativeNoteSurgicalProcedureSection))->size() <= 1
			Constraint name: OperativeNoteComponentStructuredBodyComponentOperativeNoteSurgicalProcedureSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.14']) &lt;= 1">Error: OperativeNote - 2.13.5.i.k.1 operativeNoteSurgicalProcedureSection
		Conformance: MAY contain zero or one [0..1] section (CONF:9902)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNoteSurgicalProcedureSection: 2.16.840.1.113883.10.20.7.14 -->

<pattern id="p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_title_3_73_4-error_mdht" see="#p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_title_3_73_4-error_mdht" name="p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_title_3_73_4-error_mdht">
		<!--
			UML path: /OperativeNoteSurgicalProcedureSection
			UML root path: /OperativeNote/component/structuredBody/operativeNoteSurgicalProcedureSection/operativeNoteSurgicalProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.14']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: OperativeNoteSurgicalProcedureSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.73.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8036)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNoteSurgicalProcedureSection: 2.16.840.1.113883.10.20.7.14 -->

<pattern id="p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_code_3_73_2-error_mdht" see="#p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_code_3_73_2-error_mdht" name="p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_code_3_73_2-error_mdht">
		<!--
			UML path: /OperativeNoteSurgicalProcedureSection
			UML root path: /OperativeNote/component/structuredBody/operativeNoteSurgicalProcedureSection/operativeNoteSurgicalProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.14']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '10223-6' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: OperativeNoteSurgicalProcedureSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '10223-6' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.73.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15393)/@code=&quot;10223-6&quot; Operative Note Surgical (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15394)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: OperativeNoteSurgicalProcedureSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.73.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15393)/@code=&quot;10223-6&quot; Operative Note Surgical (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15394)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNoteSurgicalProcedureSection: 2.16.840.1.113883.10.20.7.14 -->

<pattern id="p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_templateId_3_73_1-error_mdht" see="#p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_templateId_3_73_1-error_mdht" name="p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_templateId_3_73_1-error_mdht">
		<!--
			UML path: /OperativeNoteSurgicalProcedureSection
			UML root path: /OperativeNote/component/structuredBody/operativeNoteSurgicalProcedureSection/operativeNoteSurgicalProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.14']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.7.14')
			Constraint name: OperativeNoteSurgicalProcedureSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.7.14'">Error: OperativeNote - 3.73.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8034, CONF:10464 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.7.14&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- OperativeNoteSurgicalProcedureSection: 2.16.840.1.113883.10.20.7.14 -->

<pattern id="p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_text_3_73_3-error_mdht" see="#p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_text_3_73_3-error_mdht" name="p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_text_3_73_3-error_mdht">
		<!--
			UML path: /OperativeNoteSurgicalProcedureSection
			UML root path: /OperativeNote/component/structuredBody/operativeNoteSurgicalProcedureSection/operativeNoteSurgicalProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.14']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: OperativeNoteSurgicalProcedureSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.73.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8037)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_planOfCareSection_2_13_5_i_l_1-error_mdht" see="#p-OperativeNote_2_Component_planOfCareSection_2_13_5_i_l_1-error_mdht" name="p-OperativeNote_2_Component_planOfCareSection_2_13_5_i_l_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/planOfCareSection
			UML root path: /OperativeNote/component/structuredBody/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::PlanOfCareSection))->size() <= 1
			Constraint name: OperativeNoteComponentStructuredBodyComponentPlanOfCareSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']) &lt;= 1">Error: OperativeNote - 2.13.5.i.l.1 planOfCareSection
		Conformance: MAY contain zero or one [0..1] section (CONF:9904)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_7-error_mdht" see="#p-OperativeNote_3A_PlanOfCareSection_entry_3_81_7-error_mdht" name="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_7-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivityObservationEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.81.7 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_2_PlanOfCareSection_text_3_82_4-error_mdht" see="#p-OperativeNote_2_PlanOfCareSection_text_3_82_4-error_mdht" name="p-OperativeNote_2_PlanOfCareSection_text_3_82_4-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: PlanOfCareSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.82.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:7725, R2.0=CONF:1098-7725)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_10-error_mdht" see="#p-OperativeNote_3A_PlanOfCareSection_entry_3_81_10-error_mdht" name="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_10-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivitySupplyEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.81.10 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_8-error_mdht" see="#p-OperativeNote_3A_PlanOfCareSection_entry_3_81_8-error_mdht" name="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_8-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivityProcedureEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.81.8 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_11-error_mdht" see="#p-OperativeNote_3A_PlanOfCareSection_entry_3_81_11-error_mdht" name="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_11-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::InstructionsEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.81.11 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_2_PlanOfCareSection_templateId_3_81_1-error_mdht" see="#p-OperativeNote_2_PlanOfCareSection_templateId_3_81_1-error_mdht" name="p-OperativeNote_2_PlanOfCareSection_templateId_3_81_1-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: OperativeNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: OperativeNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: OperativeNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: OperativeNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: OperativeNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: OperativeNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.10')
			Constraint name: PlanOfCareSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10'">Error: OperativeNote - 3.81.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:10435 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.10&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_6-error_mdht" see="#p-OperativeNote_3A_PlanOfCareSection_entry_3_81_6-error_mdht" name="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_6-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivityEncounterEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.81.6 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_9-error_mdht" see="#p-OperativeNote_3A_PlanOfCareSection_entry_3_81_9-error_mdht" name="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_9-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivitySubstanceAdministrationEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.81.9 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_2_PlanOfCareSection_code_3_81_2-error_mdht" see="#p-OperativeNote_2_PlanOfCareSection_code_3_81_2-error_mdht" name="p-OperativeNote_2_PlanOfCareSection_code_3_81_2-error_mdht">
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
	<assert test="cda:code and cda:code[@code = '18776-5' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.81.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14749)/@code=&quot;18776-5&quot; Treatment plan (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:14750)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: PlanOfCareSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.81.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:14749)/@code=&quot;18776-5&quot; Treatment plan (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:14750)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_5-error_mdht" see="#p-OperativeNote_3A_PlanOfCareSection_entry_3_81_5-error_mdht" name="p-OperativeNote_3A_PlanOfCareSection_entry_3_81_5-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlanOfCareSection::PlanOfCareActivityActEntry))
			Constraint name: PlanOfCareSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.81.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareSection: 2.16.840.1.113883.10.20.22.2.10 -->

<pattern id="p-OperativeNote_2_PlanOfCareSection_title_3_82_3-error_mdht" see="#p-OperativeNote_2_PlanOfCareSection_title_3_82_3-error_mdht" name="p-OperativeNote_2_PlanOfCareSection_title_3_82_3-error_mdht">
		<!--
			UML path: /PlanOfCareSection
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: PlanOfCareSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.82.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:16986, R2.0=CONF:1098-16986)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityActEntry -->

<pattern id="p-OperativeNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_81_5_i-error_mdht" see="#p-OperativeNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_81_5_i-error_mdht" name="p-OperativeNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_81_5_i-error_mdht">
		<!--
			UML path: /PlanOfCareSection/entry
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry">
		<!--
			OCL: self.act->select(act : cda::Act | not act.oclIsUndefined() and act.oclIsKindOf(consol::PlanOfCareActivityAct))->size() >= 0
			Constraint name: PlanOfCareSectionPlanOfCareActivityActEntryPlanOfCareActivityAct
		-->
	<assert test="count(cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']) &gt;= 0">Error: OperativeNote - 3.81.5.i planOfCareActivityAct
		Conformance: MAY contain zero or more [0..*] act (CONF:7726.CONF:8804)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityAct: 2.16.840.1.113883.10.20.22.4.39 -->

<pattern id="p-OperativeNote_3A_PlanOfCareActivityAct_id_4_88_4-error_mdht" see="#p-OperativeNote_3A_PlanOfCareActivityAct_id_4_88_4-error_mdht" name="p-OperativeNote_3A_PlanOfCareActivityAct_id_4_88_4-error_mdht">
		<!--
			UML path: /PlanOfCareActivityAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection/entry/planOfCareActivityAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: PlanOfCareActivityActId
		-->
	<assert test="cda:id">Error: OperativeNote - 4.88.4 id
		Conformance: SHALL contain at least one [1..*] id (CONF:8546, R2.0=CONF:1098-8546)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityAct: 2.16.840.1.113883.10.20.22.4.39 -->

<pattern id="p-OperativeNote_3A_PlanOfCareActivityAct_templateId_4_97_1-error_mdht" see="#p-OperativeNote_3A_PlanOfCareActivityAct_templateId_4_97_1-error_mdht" name="p-OperativeNote_3A_PlanOfCareActivityAct_templateId_4_97_1-error_mdht">
		<!--
			UML path: /PlanOfCareActivityAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection/entry/planOfCareActivityAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.39')
			Constraint name: PlanOfCareActivityActTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39'">Error: OperativeNote - 4.97.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8544, CONF:10510 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.39&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityAct: 2.16.840.1.113883.10.20.22.4.39 -->

<pattern id="p-OperativeNote_3A_PlanOfCareActivityAct_classCode_4_88_2-error_mdht" see="#p-OperativeNote_3A_PlanOfCareActivityAct_classCode_4_88_2-error_mdht" name="p-OperativeNote_3A_PlanOfCareActivityAct_classCode_4_88_2-error_mdht">
		<!--
			UML path: /PlanOfCareActivityAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection/entry/planOfCareActivityAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">
		<!--
			OCL: self.classCode=vocab::x_ActClassDocumentEntryAct::ACT
			Constraint name: PlanOfCareActivityActClassCode
		-->
	<assert test="@classCode = 'ACT'">Error: OperativeNote - 4.88.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;ACT&quot; Act (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:8538, R2.0=CONF:1098-8538)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityAct: 2.16.840.1.113883.10.20.22.4.39 -->

<pattern id="p-OperativeNote_3A_PlanOfCareActivityAct_moodCode_4_97_3-error_mdht" see="#p-OperativeNote_3A_PlanOfCareActivityAct_moodCode_4_97_3-error_mdht" name="p-OperativeNote_3A_PlanOfCareActivityAct_moodCode_4_97_3-error_mdht">
		<!--
			UML path: /PlanOfCareActivityAct
			UML root path: /ContinuityOfCareDocument/component/structuredBody/planOfCareSection/planOfCareSection/entry/planOfCareActivityAct
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.10']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.39']">
		<!--
			OCL: true
			Constraint name: PlanOfCareActivityActMoodCodeP
		-->
	<assert test="true()">Error: OperativeNote - 4.97.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Plan of Care moodCode (Act/Encounter/Procedure) 2.16.840.1.113883.11.20.9.23 STATIC (CONF:8539)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.moodCode.oclIsUndefined() and self.moodCode.oclIsKindOf(vocab::x_DocumentActMood) and 
let value : vocab::x_DocumentActMood = self.moodCode.oclAsType(vocab::x_DocumentActMood) in 
value = vocab::x_DocumentActMood::INT or value = vocab::x_DocumentActMood::ARQ or value = vocab::x_DocumentActMood::PRMS or value = vocab::x_DocumentActMood::PRP or value = vocab::x_DocumentActMood::RQO
			Constraint name: PlanOfCareActivityActMoodCode
		-->
	<assert test="@moodCode and @moodCode[. = 'INT' or . = 'ARQ' or . = 'PRMS' or . = 'PRP' or . = 'RQO']">Error: OperativeNote - 4.97.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Plan of Care moodCode (Act/Encounter/Procedure) 2.16.840.1.113883.11.20.9.23 STATIC (CONF:8539)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_plannedProcedureSection_2_13_5_i_m_1-error_mdht" see="#p-OperativeNote_2_Component_plannedProcedureSection_2_13_5_i_m_1-error_mdht" name="p-OperativeNote_2_Component_plannedProcedureSection_2_13_5_i_m_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/plannedProcedureSection
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::PlannedProcedureSection))->size() <= 1
			Constraint name: OperativeNoteComponentStructuredBodyComponentPlannedProcedureSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']) &lt;= 1">Error: OperativeNote - 2.13.5.i.m.1 plannedProcedureSection
		Conformance: MAY contain zero or one [0..1] section (CONF:9906)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlannedProcedureSection: 2.16.840.1.113883.10.20.22.2.30 -->

<pattern id="p-OperativeNote_3A_PlannedProcedureSection_entry_3_79_5-error_mdht" see="#p-OperativeNote_3A_PlannedProcedureSection_entry_3_79_5-error_mdht" name="p-OperativeNote_3A_PlannedProcedureSection_entry_3_79_5-error_mdht">
		<!--
			UML path: /PlannedProcedureSection
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection/plannedProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::PlannedProcedureSection::PlanOfCareActivityProcedureEntry))
			Constraint name: PlannedProcedureSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.79.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlannedProcedureSection: 2.16.840.1.113883.10.20.22.2.30 -->

<pattern id="p-OperativeNote_2_PlannedProcedureSection_text_3_80_4-error_mdht" see="#p-OperativeNote_2_PlannedProcedureSection_text_3_80_4-error_mdht" name="p-OperativeNote_2_PlannedProcedureSection_text_3_80_4-error_mdht">
		<!--
			UML path: /PlannedProcedureSection
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection/plannedProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: PlannedProcedureSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.80.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8085, R2.0=CONF:1098-8085)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlannedProcedureSection: 2.16.840.1.113883.10.20.22.2.30 -->

<pattern id="p-OperativeNote_2_PlannedProcedureSection_code_3_79_2-error_mdht" see="#p-OperativeNote_2_PlannedProcedureSection_code_3_79_2-error_mdht" name="p-OperativeNote_2_PlannedProcedureSection_code_3_79_2-error_mdht">
		<!--
			UML path: /PlannedProcedureSection
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection/plannedProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '59772-4' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: PlannedProcedureSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '59772-4' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.79.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15399)/@code=&quot;59772-4&quot; Planned Procedure (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15400)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: PlannedProcedureSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.79.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15399)/@code=&quot;59772-4&quot; Planned Procedure (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15400)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlannedProcedureSection: 2.16.840.1.113883.10.20.22.2.30 -->

<pattern id="p-OperativeNote_2_PlannedProcedureSection_templateId_3_79_1-error_mdht" see="#p-OperativeNote_2_PlannedProcedureSection_templateId_3_79_1-error_mdht" name="p-OperativeNote_2_PlannedProcedureSection_templateId_3_79_1-error_mdht">
		<!--
			UML path: /PlannedProcedureSection
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection/plannedProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.30')
			Constraint name: PlannedProcedureSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30'">Error: OperativeNote - 3.79.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8082, CONF:10436 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.30&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlannedProcedureSection: 2.16.840.1.113883.10.20.22.2.30 -->

<pattern id="p-OperativeNote_2_PlannedProcedureSection_title_3_80_3-error_mdht" see="#p-OperativeNote_2_PlannedProcedureSection_title_3_80_3-error_mdht" name="p-OperativeNote_2_PlannedProcedureSection_title_3_80_3-error_mdht">
		<!--
			UML path: /PlannedProcedureSection
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection/plannedProcedureSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: PlannedProcedureSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.80.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8084, R2.0=CONF:1098-8084)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityProcedureEntry -->

<pattern id="p-OperativeNote_3A_PlanOfCareActivityProcedureEntry_planOfCareActivityProcedure_3_79_5_i-error_mdht" see="#p-OperativeNote_3A_PlanOfCareActivityProcedureEntry_planOfCareActivityProcedure_3_79_5_i-error_mdht" name="p-OperativeNote_3A_PlanOfCareActivityProcedureEntry_planOfCareActivityProcedure_3_79_5_i-error_mdht">
		<!--
			UML path: /PlannedProcedureSection/entry
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection/plannedProcedureSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']/cda:entry">
		<!--
			OCL: self.procedure->select(procedure : cda::Procedure | not procedure.oclIsUndefined() and procedure.oclIsKindOf(consol::PlanOfCareActivityProcedure))->size() >= 0
			Constraint name: PlannedProcedureSectionPlanOfCareActivityProcedureEntryPlanOfCareActivityProcedure
		-->
	<assert test="count(cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.41']) &gt;= 0">Error: OperativeNote - 3.79.5.i planOfCareActivityProcedure
		Conformance: MAY contain zero or more [0..*] procedure (CONF:8744, CONF:8766)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityProcedure: 2.16.840.1.113883.10.20.22.4.41 -->

<pattern id="p-OperativeNote_3A_PlanOfCareActivityProcedure_moodCode_4_100_3-error_mdht" see="#p-OperativeNote_3A_PlanOfCareActivityProcedure_moodCode_4_100_3-error_mdht" name="p-OperativeNote_3A_PlanOfCareActivityProcedure_moodCode_4_100_3-error_mdht">
		<!--
			UML path: /PlanOfCareActivityProcedure
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection/plannedProcedureSection/entry/planOfCareActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.41']">
		<!--
			OCL: true
			Constraint name: PlanOfCareActivityProcedureMoodCodeP
		-->
	<assert test="true()">Error: OperativeNote - 4.100.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Plan of Care moodCode (Act/Encounter/Procedure) 2.16.840.1.113883.11.20.9.23 STATIC (CONF:8569)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.moodCode.oclIsUndefined() and self.moodCode.oclIsKindOf(vocab::x_DocumentProcedureMood) and 
let value : vocab::x_DocumentProcedureMood = self.moodCode.oclAsType(vocab::x_DocumentProcedureMood) in 
value = vocab::x_DocumentProcedureMood::INT or value = vocab::x_DocumentProcedureMood::ARQ or value = vocab::x_DocumentProcedureMood::PRMS or value = vocab::x_DocumentProcedureMood::PRP or value = vocab::x_DocumentProcedureMood::RQO
			Constraint name: PlanOfCareActivityProcedureMoodCode
		-->
	<assert test="@moodCode and @moodCode[. = 'INT' or . = 'ARQ' or . = 'PRMS' or . = 'PRP' or . = 'RQO']">Error: OperativeNote - 4.100.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Plan of Care moodCode (Act/Encounter/Procedure) 2.16.840.1.113883.11.20.9.23 STATIC (CONF:8569)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityProcedure: 2.16.840.1.113883.10.20.22.4.41 -->

<pattern id="p-OperativeNote_3A_PlanOfCareActivityProcedure_templateId_4_100_1-error_mdht" see="#p-OperativeNote_3A_PlanOfCareActivityProcedure_templateId_4_100_1-error_mdht" name="p-OperativeNote_3A_PlanOfCareActivityProcedure_templateId_4_100_1-error_mdht">
		<!--
			UML path: /PlanOfCareActivityProcedure
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection/plannedProcedureSection/entry/planOfCareActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.41']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.41')
			Constraint name: PlanOfCareActivityProcedureTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.41'">Error: OperativeNote - 4.100.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8570, CONF:10513 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.41&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityProcedure: 2.16.840.1.113883.10.20.22.4.41 -->

<pattern id="p-OperativeNote_3A_PlanOfCareActivityProcedure_id_4_95_4-error_mdht" see="#p-OperativeNote_3A_PlanOfCareActivityProcedure_id_4_95_4-error_mdht" name="p-OperativeNote_3A_PlanOfCareActivityProcedure_id_4_95_4-error_mdht">
		<!--
			UML path: /PlanOfCareActivityProcedure
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection/plannedProcedureSection/entry/planOfCareActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.41']">
		<!--
			OCL: not self.id->isEmpty()
			Constraint name: PlanOfCareActivityProcedureId
		-->
	<assert test="cda:id">Error: OperativeNote - 4.95.4 id
		Conformance: SHALL contain at least one [1..*] id (CONF:8571, R2.0=CONF:1098-8571)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PlanOfCareActivityProcedure: 2.16.840.1.113883.10.20.22.4.41 -->

<pattern id="p-OperativeNote_3A_PlanOfCareActivityProcedure_classCode_4_95_2-error_mdht" see="#p-OperativeNote_3A_PlanOfCareActivityProcedure_classCode_4_95_2-error_mdht" name="p-OperativeNote_3A_PlanOfCareActivityProcedure_classCode_4_95_2-error_mdht">
		<!--
			UML path: /PlanOfCareActivityProcedure
			UML root path: /OperativeNote/component/structuredBody/plannedProcedureSection/plannedProcedureSection/entry/planOfCareActivityProcedure
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.41']">
		<!--
			OCL: self.classCode=vocab::ActClass::PROC
			Constraint name: PlanOfCareActivityProcedureClassCode
		-->
	<assert test="@classCode = 'PROC'">Error: OperativeNote - 4.95.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;PROC&quot;  (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:8568, R2.0=CONF:1098-8568)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_procedureDispositionSection_2_13_5_i_n_1-error_mdht" see="#p-OperativeNote_2_Component_procedureDispositionSection_2_13_5_i_n_1-error_mdht" name="p-OperativeNote_2_Component_procedureDispositionSection_2_13_5_i_n_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/procedureDispositionSection
			UML root path: /OperativeNote/component/structuredBody/procedureDispositionSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ProcedureDispositionSection))->size() <= 1
			Constraint name: OperativeNoteComponentStructuredBodyComponentProcedureDispositionSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.12']) &lt;= 1">Error: OperativeNote - 2.13.5.i.n.1 procedureDispositionSection
		Conformance: MAY contain zero or one [0..1] section (CONF:9908)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureDispositionSection: 2.16.840.1.113883.10.20.18.2.12 -->

<pattern id="p-OperativeNote_2_ProcedureDispositionSection_title_3_93_4-error_mdht" see="#p-OperativeNote_2_ProcedureDispositionSection_title_3_93_4-error_mdht" name="p-OperativeNote_2_ProcedureDispositionSection_title_3_93_4-error_mdht">
		<!--
			UML path: /ProcedureDispositionSection
			UML root path: /OperativeNote/component/structuredBody/procedureDispositionSection/procedureDispositionSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.12']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ProcedureDispositionSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.93.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8072)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureDispositionSection: 2.16.840.1.113883.10.20.18.2.12 -->

<pattern id="p-OperativeNote_2_ProcedureDispositionSection_code_3_93_2-error_mdht" see="#p-OperativeNote_2_ProcedureDispositionSection_code_3_93_2-error_mdht" name="p-OperativeNote_2_ProcedureDispositionSection_code_3_93_2-error_mdht">
		<!--
			UML path: /ProcedureDispositionSection
			UML root path: /OperativeNote/component/structuredBody/procedureDispositionSection/procedureDispositionSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.12']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '59775-7' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ProcedureDispositionSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '59775-7' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.93.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15413)/@code=&quot;59775-7&quot; Procedure Disposition (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15414)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProcedureDispositionSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.93.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15413)/@code=&quot;59775-7&quot; Procedure Disposition (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15414)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureDispositionSection: 2.16.840.1.113883.10.20.18.2.12 -->

<pattern id="p-OperativeNote_2_ProcedureDispositionSection_text_3_93_3-error_mdht" see="#p-OperativeNote_2_ProcedureDispositionSection_text_3_93_3-error_mdht" name="p-OperativeNote_2_ProcedureDispositionSection_text_3_93_3-error_mdht">
		<!--
			UML path: /ProcedureDispositionSection
			UML root path: /OperativeNote/component/structuredBody/procedureDispositionSection/procedureDispositionSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.12']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ProcedureDispositionSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.93.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8073)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureDispositionSection: 2.16.840.1.113883.10.20.18.2.12 -->

<pattern id="p-OperativeNote_2_ProcedureDispositionSection_templateId_3_93_1-error_mdht" see="#p-OperativeNote_2_ProcedureDispositionSection_templateId_3_93_1-error_mdht" name="p-OperativeNote_2_ProcedureDispositionSection_templateId_3_93_1-error_mdht">
		<!--
			UML path: /ProcedureDispositionSection
			UML root path: /OperativeNote/component/structuredBody/procedureDispositionSection/procedureDispositionSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.12']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.18.2.12')
			Constraint name: ProcedureDispositionSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.12'">Error: OperativeNote - 3.93.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8070, CONF:10466 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.18.2.12&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_procedureIndicationsSection_2_13_5_i_o_1-error_mdht" see="#p-OperativeNote_2_Component_procedureIndicationsSection_2_13_5_i_o_1-error_mdht" name="p-OperativeNote_2_Component_procedureIndicationsSection_2_13_5_i_o_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/procedureIndicationsSection
			UML root path: /OperativeNote/component/structuredBody/procedureIndicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::ProcedureIndicationsSection))->size() <= 1
			Constraint name: OperativeNoteComponentStructuredBodyComponentProcedureIndicationsSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']) &lt;= 1">Error: OperativeNote - 2.13.5.i.o.1 procedureIndicationsSection
		Conformance: MAY contain zero or one [0..1] section (CONF:9910)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureIndicationsSection: 2.16.840.1.113883.10.20.22.2.29 -->

<pattern id="p-OperativeNote_2_ProcedureIndicationsSection_text_3_99_4-error_mdht" see="#p-OperativeNote_2_ProcedureIndicationsSection_text_3_99_4-error_mdht" name="p-OperativeNote_2_ProcedureIndicationsSection_text_3_99_4-error_mdht">
		<!--
			UML path: /ProcedureIndicationsSection
			UML root path: /OperativeNote/component/structuredBody/procedureIndicationsSection/procedureIndicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: ProcedureIndicationsSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.99.4 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8061, R2.0=CONF:1098-8061)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureIndicationsSection: 2.16.840.1.113883.10.20.22.2.29 -->

<pattern id="p-OperativeNote_2_ProcedureIndicationsSection_code_3_98_2-error_mdht" see="#p-OperativeNote_2_ProcedureIndicationsSection_code_3_98_2-error_mdht" name="p-OperativeNote_2_ProcedureIndicationsSection_code_3_98_2-error_mdht">
		<!--
			UML path: /ProcedureIndicationsSection
			UML root path: /OperativeNote/component/structuredBody/procedureIndicationsSection/procedureIndicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '59768-2' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: ProcedureIndicationsSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '59768-2' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.98.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15419)/@code=&quot;59768-2&quot; Procedure Indications (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15420)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: ProcedureIndicationsSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.98.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15419)/@code=&quot;59768-2&quot; Procedure Indications (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15420)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureIndicationsSection: 2.16.840.1.113883.10.20.22.2.29 -->

<pattern id="p-OperativeNote_2_ProcedureIndicationsSection_templateId_3_98_1-error_mdht" see="#p-OperativeNote_2_ProcedureIndicationsSection_templateId_3_98_1-error_mdht" name="p-OperativeNote_2_ProcedureIndicationsSection_templateId_3_98_1-error_mdht">
		<!--
			UML path: /ProcedureIndicationsSection
			UML root path: /OperativeNote/component/structuredBody/procedureIndicationsSection/procedureIndicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.2.29')
			Constraint name: ProcedureIndicationsSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29'">Error: OperativeNote - 3.98.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8058, CONF:10445 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.2.29&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureIndicationsSection: 2.16.840.1.113883.10.20.22.2.29 -->

<pattern id="p-OperativeNote_3A_ProcedureIndicationsSection_entry_3_98_5-error_mdht" see="#p-OperativeNote_3A_ProcedureIndicationsSection_entry_3_98_5-error_mdht" name="p-OperativeNote_3A_ProcedureIndicationsSection_entry_3_98_5-error_mdht">
		<!--
			UML path: /ProcedureIndicationsSection
			UML root path: /OperativeNote/component/structuredBody/procedureIndicationsSection/procedureIndicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']">
		<!--
			OCL: self.nullFlavor <> vocab::NullFlavor::NI implies entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(consol::ProcedureIndicationsSection::IndicationEntry))
			Constraint name: ProcedureIndicationsSectionEntry
		-->
	<assert test="@nullFlavor = 'NI' or count(cda:entry)=1">Error: OperativeNote - 3.98.5 entry
		Conformance: SHALL contain exactly one [1..1] entry
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ProcedureIndicationsSection: 2.16.840.1.113883.10.20.22.2.29 -->

<pattern id="p-OperativeNote_2_ProcedureIndicationsSection_title_3_99_3-error_mdht" see="#p-OperativeNote_2_ProcedureIndicationsSection_title_3_99_3-error_mdht" name="p-OperativeNote_2_ProcedureIndicationsSection_title_3_99_3-error_mdht">
		<!--
			UML path: /ProcedureIndicationsSection
			UML root path: /OperativeNote/component/structuredBody/procedureIndicationsSection/procedureIndicationsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: ProcedureIndicationsSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.99.3 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8060, R2.0=CONF:1098-8060)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- IndicationEntry -->

<pattern id="p-OperativeNote_3A_IndicationEntry_indication_3_98_5_i-error_mdht" see="#p-OperativeNote_3A_IndicationEntry_indication_3_98_5_i-error_mdht" name="p-OperativeNote_3A_IndicationEntry_indication_3_98_5_i-error_mdht">
		<!--
			UML path: /ProcedureIndicationsSection/entry
			UML root path: /OperativeNote/component/structuredBody/procedureIndicationsSection/procedureIndicationsSection/entry
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']/cda:entry">
		<!--
			OCL: self.observation->select(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(consol::Indication))->size() >= 0
			Constraint name: ProcedureIndicationsSectionIndicationEntryIndication
		-->
	<assert test="count(cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']) &gt;= 0">Error: OperativeNote - 3.98.5.i indication
		Conformance: MAY contain zero or more [0..*] observation (CONF:8743, CONF:8765)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Indication: 2.16.840.1.113883.10.20.22.4.19 -->

<pattern id="p-OperativeNote_3A_Indication_statusCode_4_62_6-error_mdht" see="#p-OperativeNote_3A_Indication_statusCode_4_62_6-error_mdht" name="p-OperativeNote_3A_Indication_statusCode_4_62_6-error_mdht">
		<!--
			UML path: /Indication
			UML root path: /ContinuityOfCareDocument/component/structuredBody/encountersSection/encountersSection/entry/encounterActivities/entryRelationship/indication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">
		<!--
			OCL: true
			Constraint name: IndicationStatusCodeP
		-->
	<assert test="true()">Error: OperativeNote - 4.62.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7487, R2.0=CONF:1098-7487, R2.0=CONF:1098-19105)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.statusCode.oclIsUndefined() and self.statusCode.oclIsKindOf(datatypes::CS) and 
let value : datatypes::CS = self.statusCode.oclAsType(datatypes::CS) in 
value.code = 'completed'
			Constraint name: IndicationStatusCode
		-->
	<assert test="cda:statusCode and cda:statusCode[@code = 'completed']">Error: OperativeNote - 4.62.6 statusCode
		Conformance: SHALL contain exactly one [1..1] statusCode/@code=&quot;completed&quot;  (CodeSystem: 2.16.840.1.113883.5.14 ActStatus) (CONF:7487, R2.0=CONF:1098-7487, R2.0=CONF:1098-19105)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Indication: 2.16.840.1.113883.10.20.22.4.19 -->

<pattern id="p-OperativeNote_3A_Indication_value_4_61_8-error_mdht" see="#p-OperativeNote_3A_Indication_value_4_61_8-error_mdht" name="p-OperativeNote_3A_Indication_value_4_61_8-error_mdht">
		<!--
			UML path: /Indication
			UML root path: /ContinuityOfCareDocument/component/structuredBody/encountersSection/encountersSection/entry/encounterActivities/entryRelationship/indication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">
		<!--
			OCL: ((not self.value->isEmpty()) and self.value->exists(element | element.isNullFlavorUndefined())) implies (self.value->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = element.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and not value.code.oclIsUndefined()))
			Constraint name: IndicationValue
		-->
	<assert test="not(cda:value and cda:value[not(@nullFlavor)]) or not(cda:value[not(. and @xsi:type='CD' and @codeSystem = '2.16.840.1.113883.6.96' and @code)])">Error: OperativeNote - 4.61.8 value
		Conformance: SHOULD contain zero or one [0..1] value with @xsi:type=&quot;CD&quot; (CONF:7489), which SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:15985)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.value->isEmpty()) and self.value->exists(element | element.isNullFlavorUndefined())) implies (self.value->size() <= 1 and self.value->forAll(element | element.oclIsTypeOf(datatypes::CD)))
			Constraint name: IndicationValueP
		-->
	<assert test="not(cda:value and cda:value[not(@nullFlavor)]) or count(cda:value) &lt;= 1 and not(cda:value[not(@xsi:type='CD')])">Error: OperativeNote - 4.61.8 value
		Conformance: SHOULD contain zero or one [0..1] value with @xsi:type=&quot;CD&quot; (CONF:7489), which SHOULD be selected from ValueSet Problem 2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:15985)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Indication: 2.16.840.1.113883.10.20.22.4.19 -->

<pattern id="p-OperativeNote_3A_Indication_moodCode_4_62_3-error_mdht" see="#p-OperativeNote_3A_Indication_moodCode_4_62_3-error_mdht" name="p-OperativeNote_3A_Indication_moodCode_4_62_3-error_mdht">
		<!--
			UML path: /Indication
			UML root path: /ContinuityOfCareDocument/component/structuredBody/encountersSection/encountersSection/entry/encounterActivities/entryRelationship/indication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">
		<!--
			OCL: self.moodCode=vocab::x_ActMoodDocumentObservation::EVN
			Constraint name: IndicationMoodCode
		-->
	<assert test="@moodCode = 'EVN'">Error: OperativeNote - 4.62.3 moodCode
		Conformance: SHALL contain exactly one [1..1] @moodCode=&quot;EVN&quot; Event (CodeSystem: 2.16.840.1.113883.5.1001 HL7ActMood) (CONF:7481, R2.0=CONF:1098-7481)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Indication: 2.16.840.1.113883.10.20.22.4.19 -->

<pattern id="p-OperativeNote_3A_Indication_code_4_61_5-error_mdht" see="#p-OperativeNote_3A_Indication_code_4_61_5-error_mdht" name="p-OperativeNote_3A_Indication_code_4_61_5-error_mdht">
		<!--
			UML path: /Indication
			UML root path: /ContinuityOfCareDocument/component/structuredBody/encountersSection/encountersSection/entry/encounterActivities/entryRelationship/indication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: IndicationCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 4.61.5 code
		Conformance: SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2008-12-18 (CONF:16886)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
value.codeSystem = '2.16.840.1.113883.6.96' and (value.code = '404684003' or value.code = '409586006' or value.code = '282291009' or value.code = '64572001' or value.code = '248536006' or value.code = '418799008' or value.code = '55607006' or value.code = '373930000')
			Constraint name: IndicationCode
		-->
	<assert test="cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.96' and (@code = '404684003' or @code = '409586006' or @code = '282291009' or @code = '64572001' or @code = '248536006' or @code = '418799008' or @code = '55607006' or @code = '373930000')]">Error: OperativeNote - 4.61.5 code
		Conformance: SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2008-12-18 (CONF:16886)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Indication: 2.16.840.1.113883.10.20.22.4.19 -->

<pattern id="p-OperativeNote_3A_Indication_effectiveTime_4_62_7-error_mdht" see="#p-OperativeNote_3A_Indication_effectiveTime_4_62_7-error_mdht" name="p-OperativeNote_3A_Indication_effectiveTime_4_62_7-error_mdht">
		<!--
			UML path: /Indication
			UML root path: /ContinuityOfCareDocument/component/structuredBody/encountersSection/encountersSection/entry/encounterActivities/entryRelationship/indication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">
		<!--
			OCL: ((not self.effectiveTime.oclIsUndefined()) and self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())
			Constraint name: IndicationEffectiveTime
		-->
	<assert test="not(cda:effectiveTime and not(cda:effectiveTime/@nullFlavor)) or cda:effectiveTime">Error: OperativeNote - 4.62.7 effectiveTime
		Conformance: SHOULD contain zero or one [0..1] effectiveTime (CONF:7488, R2.0=CONF:1098-7488)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Indication: 2.16.840.1.113883.10.20.22.4.19 -->

<pattern id="p-OperativeNote_3A_Indication_templateId_4_61_1-error_mdht" see="#p-OperativeNote_3A_Indication_templateId_4_61_1-error_mdht" name="p-OperativeNote_3A_Indication_templateId_4_61_1-error_mdht">
		<!--
			UML path: /Indication
			UML root path: /ContinuityOfCareDocument/component/structuredBody/encountersSection/encountersSection/entry/encounterActivities/entryRelationship/indication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.4.19')
			Constraint name: IndicationTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19'">Error: OperativeNote - 4.61.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:7482, CONF:10502 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.22.4.19&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Indication: 2.16.840.1.113883.10.20.22.4.19 -->

<pattern id="p-OperativeNote_3A_Indication_classCode_4_62_2-error_mdht" see="#p-OperativeNote_3A_Indication_classCode_4_62_2-error_mdht" name="p-OperativeNote_3A_Indication_classCode_4_62_2-error_mdht">
		<!--
			UML path: /Indication
			UML root path: /ContinuityOfCareDocument/component/structuredBody/encountersSection/encountersSection/entry/encounterActivities/entryRelationship/indication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">
		<!--
			OCL: self.classCode=vocab::ActClassObservation::OBS
			Constraint name: IndicationClassCode
		-->
	<assert test="@classCode = 'OBS'">Error: OperativeNote - 4.62.2 classCode
		Conformance: SHALL contain exactly one [1..1] @classCode=&quot;OBS&quot; Observation (CodeSystem: 2.16.840.1.113883.5.6 HL7ActClass) (CONF:7480, R2.0=CONF:1098-7480)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Indication: 2.16.840.1.113883.10.20.22.4.19 -->

<pattern id="p-OperativeNote_3A_Indication_IndicationCodeNullFlavor_4_61_9-error_mdht" see="#p-OperativeNote_3A_Indication_IndicationCodeNullFlavor_4_61_9-error_mdht" name="p-OperativeNote_3A_Indication_IndicationCodeNullFlavor_4_61_9-error_mdht">
		<!--
			UML path: /Indication
			UML root path: /ContinuityOfCareDocument/component/structuredBody/encountersSection/encountersSection/entry/encounterActivities/entryRelationship/indication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">
		<!--
			OCL: self.value.nullFlavor->size() = 1
			Constraint name: IndicationCodeNullFlavor
		-->
	<assert test="count(cda:value/@nullFlavor) = 1">Error: OperativeNote - 4.61.9 IndicationCodeNullFlavor
		Conformance: The value element MAY contain @nullFlavor (CONF:15990)
		Analysis: The value element MAY contain @nullFlavor
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Indication: 2.16.840.1.113883.10.20.22.4.19 -->

<pattern id="p-OperativeNote_3A_Indication_id_4_61_4-error_mdht" see="#p-OperativeNote_3A_Indication_id_4_61_4-error_mdht" name="p-OperativeNote_3A_Indication_id_4_61_4-error_mdht">
		<!--
			UML path: /Indication
			UML root path: /ContinuityOfCareDocument/component/structuredBody/encountersSection/encountersSection/entry/encounterActivities/entryRelationship/indication
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">
		<!--
			OCL: self.id->size() = 1
			Constraint name: IndicationId
		-->
	<assert test="count(cda:id) = 1">Error: OperativeNote - 4.61.4 id
		Conformance: SHALL contain exactly one [1..1] id (CONF:7483)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Component -->

<pattern id="p-OperativeNote_2_Component_surgicalDrainsSection_2_13_5_i_p_1-error_mdht" see="#p-OperativeNote_2_Component_surgicalDrainsSection_2_13_5_i_p_1-error_mdht" name="p-OperativeNote_2_Component_surgicalDrainsSection_2_13_5_i_p_1-error_mdht">
		<!--
			UML path: /OperativeNote/component/structuredBody/surgicalDrainsSection
			UML root path: /OperativeNote/component/structuredBody/surgicalDrainsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">
		<!--
			OCL: self.section->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::SurgicalDrainsSection))->size() <= 1
			Constraint name: OperativeNoteComponentStructuredBodyComponentSurgicalDrainsSection
		-->
	<assert test="count(cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.13']) &lt;= 1">Error: OperativeNote - 2.13.5.i.p.1 surgicalDrainsSection
		Conformance: MAY contain zero or one [0..1] section (CONF:9912)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- SurgicalDrainsSection: 2.16.840.1.113883.10.20.7.13 -->

<pattern id="p-OperativeNote_2_SurgicalDrainsSection_code_3_116_2-error_mdht" see="#p-OperativeNote_2_SurgicalDrainsSection_code_3_116_2-error_mdht" name="p-OperativeNote_2_SurgicalDrainsSection_code_3_116_2-error_mdht">
		<!--
			UML path: /SurgicalDrainsSection
			UML root path: /OperativeNote/component/structuredBody/surgicalDrainsSection/surgicalDrainsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.13']">
		<!--
			OCL: not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.code = '11537-8' and value.codeSystem = '2.16.840.1.113883.6.1'
			Constraint name: SurgicalDrainsSectionCode
		-->
	<assert test="cda:code and cda:code[@code = '11537-8' and @codeSystem = '2.16.840.1.113883.6.1']">Error: OperativeNote - 3.116.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15441)/@code=&quot;11537-8&quot; Surgical Drains (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15442)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.code.oclIsUndefined()
			Constraint name: SurgicalDrainsSectionCodeP
		-->
	<assert test="cda:code">Error: OperativeNote - 3.116.2 code
		Conformance: SHALL contain exactly one [1..1] code (CONF:15441)/@code=&quot;11537-8&quot; Surgical Drains (CodeSystem: 2.16.840.1.113883.6.1 LOINC) (CONF:15442)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- SurgicalDrainsSection: 2.16.840.1.113883.10.20.7.13 -->

<pattern id="p-OperativeNote_2_SurgicalDrainsSection_templateId_3_116_1-error_mdht" see="#p-OperativeNote_2_SurgicalDrainsSection_templateId_3_116_1-error_mdht" name="p-OperativeNote_2_SurgicalDrainsSection_templateId_3_116_1-error_mdht">
		<!--
			UML path: /SurgicalDrainsSection
			UML root path: /OperativeNote/component/structuredBody/surgicalDrainsSection/surgicalDrainsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.13']">
		<!--
			OCL: self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.7.13')
			Constraint name: SurgicalDrainsSectionTemplateId
		-->
	<assert test="cda:templateId/@root = '2.16.840.1.113883.10.20.7.13'">Error: OperativeNote - 3.116.1 templateId
		Conformance: SHALL contain exactly one [1..1] templateId ( CONF:8038, CONF:10473 ) such that it SHALL contain exactly one [1..1] @root=&quot;2.16.840.1.113883.10.20.7.13&quot;
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- SurgicalDrainsSection: 2.16.840.1.113883.10.20.7.13 -->

<pattern id="p-OperativeNote_2_SurgicalDrainsSection_text_3_116_3-error_mdht" see="#p-OperativeNote_2_SurgicalDrainsSection_text_3_116_3-error_mdht" name="p-OperativeNote_2_SurgicalDrainsSection_text_3_116_3-error_mdht">
		<!--
			UML path: /SurgicalDrainsSection
			UML root path: /OperativeNote/component/structuredBody/surgicalDrainsSection/surgicalDrainsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.13']">
		<!--
			OCL: not self.text.oclIsUndefined()
			Constraint name: SurgicalDrainsSectionText
		-->
	<assert test="cda:text">Error: OperativeNote - 3.116.3 text
		Conformance: SHALL contain exactly one [1..1] text (CONF:8041)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- SurgicalDrainsSection: 2.16.840.1.113883.10.20.7.13 -->

<pattern id="p-OperativeNote_2_SurgicalDrainsSection_title_3_116_4-error_mdht" see="#p-OperativeNote_2_SurgicalDrainsSection_title_3_116_4-error_mdht" name="p-OperativeNote_2_SurgicalDrainsSection_title_3_116_4-error_mdht">
		<!--
			UML path: /SurgicalDrainsSection
			UML root path: /OperativeNote/component/structuredBody/surgicalDrainsSection/surgicalDrainsSection
		-->
	<rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.13']">
		<!--
			OCL: not self.title.oclIsUndefined()
			Constraint name: SurgicalDrainsSectionTitle
		-->
	<assert test="cda:title">Error: OperativeNote - 3.116.4 title
		Conformance: SHALL contain exactly one [1..1] title (CONF:8040)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Author -->

<pattern id="p-OperativeNote_1A_Author_assignedAuthor_2_13_14_ii-error_mdht" see="#p-OperativeNote_1A_Author_assignedAuthor_2_13_14_ii-error_mdht" name="p-OperativeNote_1A_Author_assignedAuthor_2_13_14_ii-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/author
			UML root path: /GeneralHeaderConstraints/author
		-->
	<rule context="/cda:ClinicalDocument/cda:author">
		<!--
			OCL: self.assignedAuthor->one(assignedAuthor : cda::AssignedAuthor | not assignedAuthor.oclIsUndefined() and assignedAuthor.oclIsKindOf(consol::GeneralHeaderConstraints::Author::AssignedAuthor))
			Constraint name: GeneralHeaderConstraintsAuthorAssignedAuthor
		-->
	<assert test="count(cda:assignedAuthor)=1">Error: OperativeNote - 2.13.14.ii assignedAuthor
		Conformance: SHALL contain exactly one [1..1] assignedAuthor (CONF:5448)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssignedAuthor -->

<pattern id="p-OperativeNote_1A_AssignedAuthor_code_2_13_14_ii_b-error_mdht" see="#p-OperativeNote_1A_AssignedAuthor_code_2_13_14_ii_b-error_mdht" name="p-OperativeNote_1A_AssignedAuthor_code_2_13_14_ii_b-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/author/assignedAuthor
			UML root path: /GeneralHeaderConstraints/author/assignedAuthor
		-->
	<rule context="/cda:ClinicalDocument/cda:author/cda:assignedAuthor">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsAuthorAssignedAuthorCodeP
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: OperativeNote - 2.13.14.ii.b code
		Conformance: SHOULD contain zero or one [0..1] code (CONF:16787), which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:16788)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.101' and not value.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsAuthorAssignedAuthorCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.101' and @code]">Error: OperativeNote - 2.13.14.ii.b code
		Conformance: SHOULD contain zero or one [0..1] code (CONF:16787), which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:16788)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-OperativeNote_1A_USRealmAddress_use_4_4_6_iii_b_1-error_mdht" see="#p-OperativeNote_1A_USRealmAddress_use_4_4_6_iii_b_1-error_mdht" name="p-OperativeNote_1A_USRealmAddress_use_4_4_6_iii_b_1-error_mdht">
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
	<assert test="@nullFlavor or not(@use) or not(@use[not(. and . = 'BAD' or . = 'DIR' or . = 'H' or . = 'HP' or . = 'HV' or . = 'PHYS' or . = 'PST' or . = 'PUB' or . = 'TMP' or . = 'WP')])">Error: OperativeNote - 4.4.6.iii.b.1 use
		Conformance: SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet PostalAddressUse 2.16.840.1.113883.1.11.10637 STATIC (CONF:7290, R2.1=CONF:81-7290)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies ((not self.use->isEmpty()) implies (self.use->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressUseP
		-->
	<assert test="@nullFlavor or not(@use) or count(@use) &lt;= 1">Error: OperativeNote - 4.4.6.iii.b.1 use
		Conformance: SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet PostalAddressUse 2.16.840.1.113883.1.11.10637 STATIC (CONF:7290, R2.1=CONF:81-7290)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-OperativeNote_1A_USRealmAddress_city_4_4_6_iii_b_4-error_mdht" see="#p-OperativeNote_1A_USRealmAddress_city_4_4_6_iii_b_4-error_mdht" name="p-OperativeNote_1A_USRealmAddress_city_4_4_6_iii_b_4-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (self.city->size() = 1 ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressCity
		-->
	<assert test="@nullFlavor or count(cda:city) = 1">Error: OperativeNote - 4.4.6.iii.b.4 city
		Conformance: SHALL contain exactly one [1..1] city (CONF:7292, R2.1=CONF:81-7292)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-OperativeNote_1A_USRealmAddress_state_4_4_6_iii_b_3-error_mdht" see="#p-OperativeNote_1A_USRealmAddress_state_4_4_6_iii_b_3-error_mdht" name="p-OperativeNote_1A_USRealmAddress_state_4_4_6_iii_b_3-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.state->isEmpty()) and self.state->exists(element | element.isNullFlavorUndefined())) implies (self.state->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressState
		-->
	<assert test="@nullFlavor or not(cda:state and cda:state[not(@nullFlavor)]) or count(cda:state) &lt;= 1">Error: OperativeNote - 4.4.6.iii.b.3 state
		Conformance: SHOULD contain zero or one [0..1] state (CONF:7293, R2.1=CONF:81-7293)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-OperativeNote_1A_USRealmAddress_country_4_4_6_iii_b_2-error_mdht" see="#p-OperativeNote_1A_USRealmAddress_country_4_4_6_iii_b_2-error_mdht" name="p-OperativeNote_1A_USRealmAddress_country_4_4_6_iii_b_2-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.country->isEmpty()) and self.country->exists(element | element.isNullFlavorUndefined())) implies (self.country->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressCountry
		-->
	<assert test="@nullFlavor or not(cda:country and cda:country[not(@nullFlavor)]) or count(cda:country) &lt;= 1">Error: OperativeNote - 4.4.6.iii.b.2 country
		Conformance: SHOULD contain zero or one [0..1] country (CONF:7295, R2.1=CONF:81-7295)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-OperativeNote_1A_USRealmAddress_postalCode_4_4_6_iii_b_5-error_mdht" see="#p-OperativeNote_1A_USRealmAddress_postalCode_4_4_6_iii_b_5-error_mdht" name="p-OperativeNote_1A_USRealmAddress_postalCode_4_4_6_iii_b_5-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.postalCode->isEmpty()) and self.postalCode->exists(element | element.isNullFlavorUndefined())) implies (self.postalCode->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressPostalCode
		-->
	<assert test="@nullFlavor or not(cda:postalCode and cda:postalCode[not(@nullFlavor)]) or count(cda:postalCode) &lt;= 1">Error: OperativeNote - 4.4.6.iii.b.5 postalCode
		Conformance: SHOULD contain zero or one [0..1] postalCode (CONF:7294, R2.1=CONF:81-7294)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmAddress -->

<pattern id="p-OperativeNote_1A_USRealmAddress_streetAddressLine_4_4_6_iii_b_6-error_mdht" see="#p-OperativeNote_1A_USRealmAddress_streetAddressLine_4_4_6_iii_b_6-error_mdht" name="p-OperativeNote_1A_USRealmAddress_streetAddressLine_4_4_6_iii_b_6-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/addr
			UML root path: /USRealmHeader2/recordTarget/patientRole/addr
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (not self.streetAddressLine->isEmpty() ))
			Constraint name: GeneralHeaderConstraintsUSRealmAddressStreetAddressLine
		-->
	<assert test="@nullFlavor or cda:streetAddressLine">Error: OperativeNote - 4.4.6.iii.b.6 streetAddressLine
		Conformance: SHALL contain at least one [1..*] streetAddressLine (CONF:7291, R2.1=CONF:81-7291)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- DataEnterer -->

<pattern id="p-OperativeNote_1A_DataEnterer_assignedEntity_2_13_15_i-error_mdht" see="#p-OperativeNote_1A_DataEnterer_assignedEntity_2_13_15_i-error_mdht" name="p-OperativeNote_1A_DataEnterer_assignedEntity_2_13_15_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/dataEnterer
			UML root path: /GeneralHeaderConstraints/dataEnterer
		-->
	<rule context="/cda:ClinicalDocument/cda:dataEnterer">
		<!--
			OCL: self.assignedEntity->one(assignedEntity : cda::AssignedEntity | not assignedEntity.oclIsUndefined() and assignedEntity.oclIsKindOf(consol::GeneralHeaderConstraints::DataEnterer::AssignedEntity))
			Constraint name: GeneralHeaderConstraintsDataEntererAssignedEntity
		-->
	<assert test="count(cda:assignedEntity)=1">Error: OperativeNote - 2.13.15.i assignedEntity
		Conformance: SHALL contain exactly one [1..1] assignedEntity (CONF:5442)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssignedEntity -->

<pattern id="p-OperativeNote_1A_AssignedEntity_code_2_13_15_i_b-error_mdht" see="#p-OperativeNote_1A_AssignedEntity_code_2_13_15_i_b-error_mdht" name="p-OperativeNote_1A_AssignedEntity_code_2_13_15_i_b-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/dataEnterer/assignedEntity
			UML root path: /GeneralHeaderConstraints/dataEnterer/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:dataEnterer/cda:assignedEntity">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsDataEntererAssignedEntityCodeP
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: OperativeNote - 2.13.15.i.b code
		Conformance: MAY contain zero or one [0..1] code, which SHOULD be selected from (CodeSystem: 2.16.840.1.113883.6.101 NUCC Health Care Provider Taxonomy) (CONF:9944)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.101')
			Constraint name: GeneralHeaderConstraintsDataEntererAssignedEntityCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.101']">Error: OperativeNote - 2.13.15.i.b code
		Conformance: MAY contain zero or one [0..1] code, which SHOULD be selected from (CodeSystem: 2.16.840.1.113883.6.101 NUCC Health Care Provider Taxonomy) (CONF:9944)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- InformationRecipient -->

<pattern id="p-OperativeNote_1A_InformationRecipient_intendedRecipient_2_13_17_i-error_mdht" see="#p-OperativeNote_1A_InformationRecipient_intendedRecipient_2_13_17_i-error_mdht" name="p-OperativeNote_1A_InformationRecipient_intendedRecipient_2_13_17_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informationRecipient
			UML root path: /GeneralHeaderConstraints/informationRecipient
		-->
	<rule context="/cda:ClinicalDocument/cda:informationRecipient">
		<!--
			OCL: self.intendedRecipient->one(intendedRecipient : cda::IntendedRecipient | not intendedRecipient.oclIsUndefined() and intendedRecipient.oclIsKindOf(consol::GeneralHeaderConstraints::InformationRecipient::IntendedRecipient))
			Constraint name: GeneralHeaderConstraintsInformationRecipientIntendedRecipient
		-->
	<assert test="count(cda:intendedRecipient)=1">Error: OperativeNote - 2.13.17.i intendedRecipient
		Conformance: SHALL contain exactly one [1..1] intendedRecipient (CONF:5566)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Informant -->

<pattern id="p-OperativeNote_1A_Informant_GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity_2_13_20_iii-error_mdht" see="#p-OperativeNote_1A_Informant_GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity_2_13_20_iii-error_mdht" name="p-OperativeNote_1A_Informant_GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity_2_13_20_iii-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informant
			UML root path: /GeneralHeaderConstraints/informant
		-->
	<rule context="/cda:ClinicalDocument/cda:informant">
		<!--
			OCL: self.assignedEntity.oclIsUndefined() xor self.relatedEntity.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity
		-->
	<assert test="not(cda:assignedEntity) or not(cda:relatedEntity)">Error: OperativeNote - 2.13.20.iii GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity
		Conformance: SHALL satisfy: contain exactly one [1..1] assignedEntity OR exactly one [1..1] relatedEntity (CONF:8002)
		Analysis: contain exactly one [1..1] assignedEntity OR exactly one [1..1] relatedEntity
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssignedEntity -->

<pattern id="p-OperativeNote_1A_AssignedEntity_code_2_13_20_i_b-error_mdht" see="#p-OperativeNote_1A_AssignedEntity_code_2_13_20_i_b-error_mdht" name="p-OperativeNote_1A_AssignedEntity_code_2_13_20_i_b-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informant/assignedEntity
			UML root path: /GeneralHeaderConstraints/informant/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:informant/cda:assignedEntity">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsInformantAssignedEntityCodeP
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: OperativeNote - 2.13.20.i.b code
		Conformance: MAY contain zero or one [0..1] code, which SHOULD be selected from (CodeSystem: 2.16.840.1.113883.6.101 NUCC Health Care Provider Taxonomy) (CONF:9947)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.101')
			Constraint name: GeneralHeaderConstraintsInformantAssignedEntityCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code and cda:code[@codeSystem = '2.16.840.1.113883.6.101']">Error: OperativeNote - 2.13.20.i.b code
		Conformance: MAY contain zero or one [0..1] code, which SHOULD be selected from (CodeSystem: 2.16.840.1.113883.6.101 NUCC Health Care Provider Taxonomy) (CONF:9947)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- AssignedEntity -->

<pattern id="p-OperativeNote_1A_AssignedEntity_addr_2_13_20_i_c-error_mdht" see="#p-OperativeNote_1A_AssignedEntity_addr_2_13_20_i_c-error_mdht" name="p-OperativeNote_1A_AssignedEntity_addr_2_13_20_i_c-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informant/assignedEntity
			UML root path: /GeneralHeaderConstraints/informant/assignedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:informant/cda:assignedEntity">
		<!--
			OCL: ((not self.addr->isEmpty()) and self.addr->exists(element | element.isNullFlavorUndefined())) implies (not self.addr->isEmpty())
			Constraint name: GeneralHeaderConstraintsInformantAssignedEntityAddr
		-->
	<assert test="not(cda:addr and cda:addr[not(@nullFlavor)]) or cda:addr">Error: OperativeNote - 2.13.20.i.c addr
		Conformance: SHOULD contain zero or more [0..*] addr (CONF:8220)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- RelatedEntity -->

<pattern id="p-OperativeNote_1A_RelatedEntity_addr_2_13_20_ii_a-error_mdht" see="#p-OperativeNote_1A_RelatedEntity_addr_2_13_20_ii_a-error_mdht" name="p-OperativeNote_1A_RelatedEntity_addr_2_13_20_ii_a-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informant/relatedEntity
			UML root path: /GeneralHeaderConstraints/informant/relatedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:informant/cda:relatedEntity">
		<!--
			OCL: ((not self.addr->isEmpty()) and self.addr->exists(element | element.isNullFlavorUndefined())) implies (not self.addr->isEmpty())
			Constraint name: GeneralHeaderConstraintsInformantRelatedEntityAddr
		-->
	<assert test="not(cda:addr and cda:addr[not(@nullFlavor)]) or cda:addr">Error: OperativeNote - 2.13.20.ii.a addr
		Conformance: SHOULD contain zero or more [0..*] addr (CONF:8220)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- RelatedEntity -->

<pattern id="p-OperativeNote_1A_RelatedEntity_person_2_13_20_ii_b-error_mdht" see="#p-OperativeNote_1A_RelatedEntity_person_2_13_20_ii_b-error_mdht" name="p-OperativeNote_1A_RelatedEntity_person_2_13_20_ii_b-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/informant/relatedEntity
			UML root path: /GeneralHeaderConstraints/informant/relatedEntity
		-->
	<rule context="/cda:ClinicalDocument/cda:informant/cda:relatedEntity">
		<!--
			OCL: self.relatedPerson->one(relatedPerson : cda::Person | not relatedPerson.oclIsUndefined() and relatedPerson.oclIsKindOf(consol::GeneralHeaderConstraints::Informant::AssignedEntity::Person))
			Constraint name: GeneralHeaderConstraintsInformantRelatedEntityPerson
		-->
	<assert test="count(cda:relatedPerson)=1">Error: OperativeNote - 2.13.20.ii.b person
		Conformance: SHALL contain exactly one [1..1] relatedPerson (CONF:8221)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ParticipantSupport -->

<pattern id="p-OperativeNote_1A_ParticipantSupport_GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization_2_13_21_ii-error_mdht" see="#p-OperativeNote_1A_ParticipantSupport_GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization_2_13_21_ii-error_mdht" name="p-OperativeNote_1A_ParticipantSupport_GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization_2_13_21_ii-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/supportParticipant
			UML root path: /GeneralHeaderConstraints/supportParticipant
		-->
	<rule context="/cda:ClinicalDocument/cda:participant">
		<!--
			OCL: (not self.associatedEntity.associatedPerson.oclIsUndefined()) or (not self.associatedEntity.scopingOrganization.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization
		-->
	<assert test="cda:associatedEntity/cda:associatedPerson or cda:associatedEntity/cda:scopingOrganization">Error: OperativeNote - 2.13.21.ii GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization
		Conformance: Such participants, if present, SHALL have an associatedPerson or scopingOrganization element under participant/associatedEntity. (CONF:10006)
		Analysis: Such participants, if present, SHALL have an associatedPerson or scopingOrganization element under participant/associatedEntity.
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- RecordTarget -->

<pattern id="p-OperativeNote_1A_RecordTarget_patientRole_2_13_12_i-error_mdht" see="#p-OperativeNote_1A_RecordTarget_patientRole_2_13_12_i-error_mdht" name="p-OperativeNote_1A_RecordTarget_patientRole_2_13_12_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget
			UML root path: /GeneralHeaderConstraints/recordTarget
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget">
		<!--
			OCL: self.patientRole->one(patientRole : cda::PatientRole | not patientRole.oclIsUndefined() and patientRole.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRole
		-->
	<assert test="count(cda:patientRole)=1">Error: OperativeNote - 2.13.12.i patientRole
		Conformance: SHALL contain exactly one [1..1] patientRole (CONF:5268)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- PatientRole -->

<pattern id="p-OperativeNote_1A_PatientRole_patient_2_13_12_i_d-error_mdht" see="#p-OperativeNote_1A_PatientRole_patient_2_13_12_i_d-error_mdht" name="p-OperativeNote_1A_PatientRole_patient_2_13_12_i_d-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole">
		<!--
			OCL: self.patient->one(patient : cda::Patient | not patient.oclIsUndefined() and patient.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole::Patient))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatient
		-->
	<assert test="count(cda:patient)=1">Error: OperativeNote - 2.13.12.i.d patient
		Conformance: SHALL contain exactly one [1..1] patient (CONF:1198-5283)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-OperativeNote_1A_Patient_GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode_2_13_12_i_d_12-error_mdht" see="#p-OperativeNote_1A_Patient_GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode_2_13_12_i_d_12-error_mdht" name="p-OperativeNote_1A_Patient_GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode_2_13_12_i_d_12-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: sDTCRaceCode->notEmpty() implies not raceCode.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode
		-->
	<assert test="not(ext:sDTCRaceCode) or cda:raceCode">Error: OperativeNote - 2.13.12.i.d.12 GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode
		Conformance: If sdtc:raceCode is present, then the patient SHALL contain [1..1] raceCode (CONF:31347, R2.1=CONF:1198-31347)
		Analysis: If sdtc:raceCode is present, then the patient SHALL contain [1..1] raceCode
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-OperativeNote_1A_Patient_birthplace_2_13_12_i_d_10-error_mdht" see="#p-OperativeNote_1A_Patient_birthplace_2_13_12_i_d_10-error_mdht" name="p-OperativeNote_1A_Patient_birthplace_2_13_12_i_d_10-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: self.birthplace->select(birthplace : cda::Birthplace | not birthplace.oclIsUndefined() and birthplace.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole::Patient::Birthplace))->size() <= 1
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplace
		-->
	<assert test="count(cda:birthplace) &lt;= 1">Error: OperativeNote - 2.13.12.i.d.10 birthplace
		Conformance: MAY contain zero or one [0..1] birthplace (CONF:5395)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-OperativeNote_1A_Patient_birthTime_2_13_12_i_d_3-error_mdht" see="#p-OperativeNote_1A_Patient_birthTime_2_13_12_i_d_3-error_mdht" name="p-OperativeNote_1A_Patient_birthTime_2_13_12_i_d_3-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: not self.birthTime.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthTime
		-->
	<assert test="cda:birthTime">Error: OperativeNote - 2.13.12.i.d.3 birthTime
		Conformance: SHALL contain exactly one [1..1] birthTime (CONF:5298)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-OperativeNote_1A_Patient_languageCommunication_2_13_12_i_d_11-error_mdht" see="#p-OperativeNote_1A_Patient_languageCommunication_2_13_12_i_d_11-error_mdht" name="p-OperativeNote_1A_Patient_languageCommunication_2_13_12_i_d_11-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: self.languageCommunication->select(languageCommunication : cda::LanguageCommunication | not languageCommunication.oclIsUndefined() and languageCommunication.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole::Patient::LanguageCommunication))->size() >= 0
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunication
		-->
	<assert test="count(cda:languageCommunication) &gt;= 0">Error: OperativeNote - 2.13.12.i.d.11 languageCommunication
		Conformance: SHOULD contain zero or more [0..*] languageCommunication (CONF:5406)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-OperativeNote_1A_Patient_guardian_2_13_12_i_d_9-error_mdht" see="#p-OperativeNote_1A_Patient_guardian_2_13_12_i_d_9-error_mdht" name="p-OperativeNote_1A_Patient_guardian_2_13_12_i_d_9-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: self.guardian->select(guardian : cda::Guardian | not guardian.oclIsUndefined() and guardian.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole::Patient::Guardian))->size() >= 0
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardian
		-->
	<assert test="count(cda:guardian) &gt;= 0">Error: OperativeNote - 2.13.12.i.d.9 guardian
		Conformance: MAY contain zero or more [0..*] guardian (CONF:5325)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-OperativeNote_1A_Patient_ethnicGroupCode_2_13_12_i_d_8-error_mdht" see="#p-OperativeNote_1A_Patient_ethnicGroupCode_2_13_12_i_d_8-error_mdht" name="p-OperativeNote_1A_Patient_ethnicGroupCode_2_13_12_i_d_8-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: ((not self.ethnicGroupCode.oclIsUndefined()) and self.ethnicGroupCode.isNullFlavorUndefined()) implies (not self.ethnicGroupCode.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientEthnicGroupCodeP
		-->
	<assert test="not(cda:ethnicGroupCode and not(cda:ethnicGroupCode/@nullFlavor)) or cda:ethnicGroupCode">Error: OperativeNote - 2.13.12.i.d.8 ethnicGroupCode
		Conformance: MAY contain zero or one [0..1] ethnicGroupCode, which SHALL be selected from ValueSet Ethnicity Value Set 2.16.840.1.114222.4.11.837 DYNAMIC (CONF:5323)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.ethnicGroupCode.oclIsUndefined()) and self.ethnicGroupCode.isNullFlavorUndefined()) implies (not self.ethnicGroupCode.oclIsUndefined() and self.ethnicGroupCode.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.ethnicGroupCode.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.238' and (value.code = '2135-2' or value.code = '2186-5'))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientEthnicGroupCode
		-->
	<assert test="not(cda:ethnicGroupCode and not(cda:ethnicGroupCode/@nullFlavor)) or cda:ethnicGroupCode and cda:ethnicGroupCode[@codeSystem = '2.16.840.1.113883.6.238' and (@code = '2135-2' or @code = '2186-5')]">Error: OperativeNote - 2.13.12.i.d.8 ethnicGroupCode
		Conformance: MAY contain zero or one [0..1] ethnicGroupCode, which SHALL be selected from ValueSet Ethnicity Value Set 2.16.840.1.114222.4.11.837 DYNAMIC (CONF:5323)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Patient -->

<pattern id="p-OperativeNote_1A_Patient_raceCode_2_13_12_i_d_6-error_mdht" see="#p-OperativeNote_1A_Patient_raceCode_2_13_12_i_d_6-error_mdht" name="p-OperativeNote_1A_Patient_raceCode_2_13_12_i_d_6-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">
		<!--
			OCL: ((not self.raceCode.oclIsUndefined()) and self.raceCode.isNullFlavorUndefined()) implies (not self.raceCode.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientRaceCodeP
		-->
	<assert test="not(cda:raceCode and not(cda:raceCode/@nullFlavor)) or cda:raceCode">Error: OperativeNote - 2.13.12.i.d.6 raceCode
		Conformance: SHOULD contain zero or one [0..1] raceCode, which SHALL be selected from ValueSet Race 2.16.840.1.113883.1.11.14914 DYNAMIC (CONF:5322)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: ((not self.raceCode.oclIsUndefined()) and self.raceCode.isNullFlavorUndefined()) implies (not self.raceCode.oclIsUndefined() and self.raceCode.oclIsKindOf(datatypes::CE) and 
let value : datatypes::CE = self.raceCode.oclAsType(datatypes::CE) in 
value.codeSystem = '2.16.840.1.113883.6.238' and not value.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientRaceCode
		-->
	<assert test="not(cda:raceCode and not(cda:raceCode/@nullFlavor)) or cda:raceCode and cda:raceCode[@codeSystem = '2.16.840.1.113883.6.238' and @code]">Error: OperativeNote - 2.13.12.i.d.6 raceCode
		Conformance: SHOULD contain zero or one [0..1] raceCode, which SHALL be selected from ValueSet Race 2.16.840.1.113883.1.11.14914 DYNAMIC (CONF:5322)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-OperativeNote_1A_USRealmPatientName_suffix_2_19_5_ii_b_1_v-error_mdht" see="#p-OperativeNote_1A_USRealmPatientName_suffix_2_19_5_ii_b_1_v-error_mdht" name="p-OperativeNote_1A_USRealmPatientName_suffix_2_19_5_ii_b_1_v-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.suffix->isEmpty()) and self.suffix->exists(element | element.isNullFlavorUndefined())) implies (self.suffix->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameSuffix
		-->
	<assert test="@nullFlavor or not(cda:suffix and cda:suffix[not(@nullFlavor)]) or count(cda:suffix) &lt;= 1">Error: OperativeNote - 2.19.5.ii.b.1.v suffix
		Conformance: MAY contain zero or one [0..1] suffix (CONF:7161, R2.1=CONF:81-7161)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-OperativeNote_1A_USRealmPatientName_prefix_2_19_5_ii_b_1_iv-error_mdht" see="#p-OperativeNote_1A_USRealmPatientName_prefix_2_19_5_ii_b_1_iv-error_mdht" name="p-OperativeNote_1A_USRealmPatientName_prefix_2_19_5_ii_b_1_iv-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (((not self.prefix->isEmpty()) and self.prefix->exists(element | element.isNullFlavorUndefined())) implies (not self.prefix->isEmpty()) ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNamePrefix
		-->
	<assert test="@nullFlavor or not(cda:prefix and cda:prefix[not(@nullFlavor)]) or cda:prefix">Error: OperativeNote - 2.19.5.ii.b.1.iv prefix
		Conformance: MAY contain zero or more [0..*] prefix (CONF:7155, R2.1=CONF:81-7155)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-OperativeNote_1A_USRealmPatientName_given_2_19_5_ii_b_1_iii-error_mdht" see="#p-OperativeNote_1A_USRealmPatientName_given_2_19_5_ii_b_1_iii-error_mdht" name="p-OperativeNote_1A_USRealmPatientName_given_2_19_5_ii_b_1_iii-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (not self.given->isEmpty() ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameGiven
		-->
	<assert test="@nullFlavor or cda:given">Error: OperativeNote - 2.19.5.ii.b.1.iii given
		Conformance: SHALL contain at least one [1..*] given (CONF:7157, R2.1=CONF:81-7157)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-OperativeNote_1A_USRealmPatientName_use_2_19_5_ii_b_1_i-error_mdht" see="#p-OperativeNote_1A_USRealmPatientName_use_2_19_5_ii_b_1_i-error_mdht" name="p-OperativeNote_1A_USRealmPatientName_use_2_19_5_ii_b_1_i-error_mdht">
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
	<assert test="@nullFlavor or not(@use) or not(@use[not(. and . = 'A' or . = 'ABC' or . = 'ASGN' or . = 'C' or . = 'I' or . = 'IDE' or . = 'L' or . = 'P' or . = 'PHON' or . = 'R' or . = 'SNDX' or . = 'SRCH' or . = 'SYL')])">Error: OperativeNote - 2.19.5.ii.b.1.i use
		Conformance: MAY contain zero or one [0..1] @use, which SHALL be selected from ValueSet EntityNameUse 2.16.840.1.113883.1.11.15913 STATIC (CONF:7154, R2.1=CONF:81-7154)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies ((not self.use->isEmpty()) implies (self.use->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameUseP
		-->
	<assert test="@nullFlavor or not(@use) or count(@use) &lt;= 1">Error: OperativeNote - 2.19.5.ii.b.1.i use
		Conformance: MAY contain zero or one [0..1] @use, which SHALL be selected from ValueSet EntityNameUse 2.16.840.1.113883.1.11.15913 STATIC (CONF:7154, R2.1=CONF:81-7154)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-OperativeNote_1A_USRealmPatientName_family_2_19_5_ii_b_1_ii-error_mdht" see="#p-OperativeNote_1A_USRealmPatientName_family_2_19_5_ii_b_1_ii-error_mdht" name="p-OperativeNote_1A_USRealmPatientName_family_2_19_5_ii_b_1_ii-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (self.family->size() = 1 ))
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameFamily
		-->
	<assert test="@nullFlavor or count(cda:family) = 1">Error: OperativeNote - 2.19.5.ii.b.1.ii family
		Conformance: SHALL contain exactly one [1..1] family (CONF:7159, R2.1=CONF:81-7159)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- USRealmPatientName -->

<pattern id="p-OperativeNote_1A_USRealmPatientName_GeneralHeaderConstraints_2_10-error_mdht" see="#p-OperativeNote_1A_USRealmPatientName_GeneralHeaderConstraints_2_10-error_mdht" name="p-OperativeNote_1A_USRealmPatientName_GeneralHeaderConstraints_2_10-error_mdht">
		<!--
			UML path: /USRealmHeader2/recordTarget/patientRole/patient/name
			UML root path: /USRealmHeader2/recordTarget/patientRole/patient/name
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
		<!--
			OCL: getText(true)=''
			Constraint name: GeneralHeaderConstraintsUSRealmPatientNameUSRealmPatientNameMixedContent
		-->
	<assert test="string(@id=true()// text()) = ''">Error: OperativeNote - 2.10 USRealmHeader
		Conformance: 
		Analysis: US Realm Patient Name SHALL NOT have mixed content except for white space
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- TS -->

<pattern id="p-OperativeNote_1A_TS_value_2_13_12_i_d_3_i-error_mdht" see="#p-OperativeNote_1A_TS_value_2_13_12_i_d_3_i-error_mdht" name="p-OperativeNote_1A_TS_value_2_13_12_i_d_3_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthTime
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthTime
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies (not self.value.oclIsUndefined() ))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientTSValue
		-->
	<assert test="@nullFlavor or @value">Error: OperativeNote - 2.13.12.i.d.3.i value
		Conformance: SHALL contain exactly one [1..1] value (CONF:5299, CONF:5300)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Guardian -->

<pattern id="p-OperativeNote_1A_Guardian_GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty_2_13_12_i_d_9_v-error_mdht" see="#p-OperativeNote_1A_Guardian_GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty_2_13_12_i_d_9_v-error_mdht" name="p-OperativeNote_1A_Guardian_GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty_2_13_12_i_d_9_v-error_mdht">
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
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code[@codeSystem = '2.16.840.1.113883.5.111' and (@code = 'ADOPT' or @code = 'AUNT' or @code = 'CHILD' or @code = 'CHLDINLAW' or @code = 'COUSN' or @code = 'DOMPART' or @code = 'FAMMEMB' or @code = 'CHLDFOST' or @code = 'GRNDCHILD' or @code = 'GPARNT' or @code = 'GRPRN' or @code = 'GGRPRN' or @code = 'HSIB' or @code = 'MAUNT' or @code = 'MCOUSN' or @code = 'MGRPRN' or @code = 'MGGRPRN' or @code = 'MUNCLE' or @code = 'NCHILD' or @code = 'NPRN' or @code = 'NSIB' or @code = 'NBOR' or @code = 'NIENEPH' or @code = 'PRN' or @code = 'PRNINLAW' or @code = 'PAUNT' or @code = 'PCOUSN' or @code = 'PGRPRN' or @code = 'PGGRPRN' or @code = 'PUNCLE' or @code = 'ROOM' or @code = 'SIB' or @code = 'SIBINLAW' or @code = 'SIGOTHR' or @code = 'SPS' or @code = 'STEP' or @code = 'STPPRN' or @code = 'STPSIB' or @code = 'UNCLE' or @code = 'FRND' or @code = 'RESPRSN' or @code = 'EXCEST' or @code = 'GUADLTM' or @code = 'GUARD' or @code = 'POWATT' or @code = 'DPOWATT' or @code = 'HPOWATT' or @code = 'SPOWATT')]">Error: OperativeNote - 2.13.12.i.d.9.v GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty
		Conformance: The guardian code, if present, SHALL be selected from ValueSet PersonalRelationshipRoleType 2.16.840.1.113883.1.11.19563 DYNAMIC or ValueSet Responsible Party 2.16.840.1.113883.1.11.19830 DYNAMIC (CONF:5326)
		Analysis: The guardian code, if present, SHALL be selected from ValueSet PersonalRelationshipRoleType 2.16.840.1.113883.1.11.19563 DYNAMIC or ValueSet Responsible Party 2.16.840.1.113883.1.11.19830 DYNAMIC
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Guardian -->

<pattern id="p-OperativeNote_1A_Guardian_telecom_2_13_12_i_d_9_iii-error_mdht" see="#p-OperativeNote_1A_Guardian_telecom_2_13_12_i_d_9_iii-error_mdht" name="p-OperativeNote_1A_Guardian_telecom_2_13_12_i_d_9_iii-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian">
		<!--
			OCL: ((not self.telecom->isEmpty()) and self.telecom->exists(element | element.isNullFlavorUndefined())) implies (not self.telecom->isEmpty())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianTelecom
		-->
	<assert test="not(cda:telecom and cda:telecom[not(@nullFlavor)]) or cda:telecom">Error: OperativeNote - 2.13.12.i.d.9.iii telecom
		Conformance: MAY contain zero or more [0..*] telecom
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Guardian -->

<pattern id="p-OperativeNote_1A_Guardian_code_2_13_12_i_d_9_i-error_mdht" see="#p-OperativeNote_1A_Guardian_code_2_13_12_i_d_9_i-error_mdht" name="p-OperativeNote_1A_Guardian_code_2_13_12_i_d_9_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian">
		<!--
			OCL: ((not self.code.oclIsUndefined()) and self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCode
		-->
	<assert test="not(cda:code and not(cda:code/@nullFlavor)) or cda:code">Error: OperativeNote - 2.13.12.i.d.9.i code
		Conformance: SHOULD contain zero or one [0..1] code (CONF:5326)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- TEL -->

<pattern id="p-OperativeNote_1A_TEL_use_2_13_12_i_d_9_iii_a-error_mdht" see="#p-OperativeNote_1A_TEL_use_2_13_12_i_d_9_iii_a-error_mdht" name="p-OperativeNote_1A_TEL_use_2_13_12_i_d_9_iii_a-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian/telecom
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/guardian/telecom
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:telecom">
		<!--
			OCL:  ( self.isNullFlavorUndefined() implies ((not self.use->isEmpty()) implies (self.use->size() <= 1) ))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianTELUse
		-->
	<assert test="@nullFlavor or not(@use) or count(@use) &lt;= 1">Error: OperativeNote - 2.13.12.i.d.9.iii.a use
		Conformance: SHOULD contain zero or one [0..1] @use (CONF:7993, R2.1=CONF:1198-7993)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Birthplace -->

<pattern id="p-OperativeNote_1A_Birthplace_place_2_13_12_i_d_10_i-error_mdht" see="#p-OperativeNote_1A_Birthplace_place_2_13_12_i_d_10_i-error_mdht" name="p-OperativeNote_1A_Birthplace_place_2_13_12_i_d_10_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthplace
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthplace
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace">
		<!--
			OCL: self.place->one(place : cda::Place | not place.oclIsUndefined() and place.oclIsKindOf(consol::GeneralHeaderConstraints::RecordTarget::PatientRole::Patient::Birthplace::Place))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlace
		-->
	<assert test="count(cda:place)=1">Error: OperativeNote - 2.13.12.i.d.10.i place
		Conformance: SHALL contain exactly one [1..1] place (CONF:5396)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- Place -->

<pattern id="p-OperativeNote_1A_Place_GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState_2_13_12_i_d_10_i_b-error_mdht" see="#p-OperativeNote_1A_Place_GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState_2_13_12_i_d_10_i_b-error_mdht" name="p-OperativeNote_1A_Place_GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState_2_13_12_i_d_10_i_b-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthplace/place
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/birthplace/place
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place">
		<!--
			OCL: (addr.country->exists(curCountry | not curCountry.oclIsUndefined() and curCountry.getText() = 'US')) implies (addr.state->size() = 1) and ((addr.state->exists(curState | (curState.getText() = 'AL' or curState.getText() = 'AK' or curState.getText() = 'AS' or curState.getText() = 'AZ' or curState.getText() = 'AR' or curState.getText() = 'CA' or curState.getText() = 'CO' or curState.getText() = 'CT' or curState.getText() = 'DE' or curState.getText() = 'DC' or curState.getText() = 'FL' or curState.getText() = 'FM' or curState.getText() = 'GA' or curState.getText() = 'GU' or curState.getText() = 'HI' or curState.getText() = 'ID' or curState.getText() = 'IL' or curState.getText() = 'IN' or curState.getText() = 'IA' or curState.getText() = 'KS' or curState.getText() = 'KY' or curState.getText() = 'LA' or curState.getText() = 'ME' or curState.getText() = 'MH' or curState.getText() = 'MD' or curState.getText() = 'MA' or curState.getText() = 'MI' or curState.getText() = 'MN' or curState.getText() = 'MS' or curState.getText() = 'MO' or curState.getText() = 'MT' or curState.getText() = 'NE' or curState.getText() = 'NV' or curState.getText() = 'NH' or curState.getText() = 'NJ' or curState.getText() = 'NM' or curState.getText() = 'NY' or curState.getText() = 'NC' or curState.getText() = 'ND' or curState.getText() = 'MP' or curState.getText() = 'OH' or curState.getText() = 'OK' or curState.getText() = 'OR' or curState.getText() = 'PW' or curState.getText() = 'PA' or curState.getText() = 'PR' or curState.getText() = 'RI' or curState.getText() = 'SC' or curState.getText() = 'SD' or curState.getText() = 'TN' or curState.getText() = 'TX' or curState.getText() = 'UM' or curState.getText() = 'UT' or curState.getText() = 'VT' or curState.getText() = 'VA' or curState.getText() = 'VI' or curState.getText() = 'WA' or curState.getText() = 'WV' or curState.getText() = 'WI' or curState.getText() = 'WY' ))) or (addr.state->exists(curState | curState.isNullFlavorDefined())))
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState
		-->
	<assert test="not(cda:addr/cda:country[string(.//text()) = 'US']) or count(cda:addr/cda:state) = 1 and (cda:addr/cda:state[string(.//text()) = 'AL' or string(.//text()) = 'AK' or string(.//text()) = 'AS' or string(.//text()) = 'AZ' or string(.//text()) = 'AR' or string(.//text()) = 'CA' or string(.//text()) = 'CO' or string(.//text()) = 'CT' or string(.//text()) = 'DE' or string(.//text()) = 'DC' or string(.//text()) = 'FL' or string(.//text()) = 'FM' or string(.//text()) = 'GA' or string(.//text()) = 'GU' or string(.//text()) = 'HI' or string(.//text()) = 'ID' or string(.//text()) = 'IL' or string(.//text()) = 'IN' or string(.//text()) = 'IA' or string(.//text()) = 'KS' or string(.//text()) = 'KY' or string(.//text()) = 'LA' or string(.//text()) = 'ME' or string(.//text()) = 'MH' or string(.//text()) = 'MD' or string(.//text()) = 'MA' or string(.//text()) = 'MI' or string(.//text()) = 'MN' or string(.//text()) = 'MS' or string(.//text()) = 'MO' or string(.//text()) = 'MT' or string(.//text()) = 'NE' or string(.//text()) = 'NV' or string(.//text()) = 'NH' or string(.//text()) = 'NJ' or string(.//text()) = 'NM' or string(.//text()) = 'NY' or string(.//text()) = 'NC' or string(.//text()) = 'ND' or string(.//text()) = 'MP' or string(.//text()) = 'OH' or string(.//text()) = 'OK' or string(.//text()) = 'OR' or string(.//text()) = 'PW' or string(.//text()) = 'PA' or string(.//text()) = 'PR' or string(.//text()) = 'RI' or string(.//text()) = 'SC' or string(.//text()) = 'SD' or string(.//text()) = 'TN' or string(.//text()) = 'TX' or string(.//text()) = 'UM' or string(.//text()) = 'UT' or string(.//text()) = 'VT' or string(.//text()) = 'VA' or string(.//text()) = 'VI' or string(.//text()) = 'WA' or string(.//text()) = 'WV' or string(.//text()) = 'WI' or string(.//text()) = 'WY'] or cda:addr/cda:state[@nullFlavor])">Error: OperativeNote - 2.13.12.i.d.10.i.b GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState
		Conformance: If country is US, this addr SHALL contain exactly one [1..1] state, which SHALL be selected from ValueSet StateValueSet 2.16.840.1.113883.3.88.12.80.1 DYNAMIC (CONF:5402)
		Analysis: If country is US, this addr SHALL contain exactly one [1..1] state, which SHALL be selected from ValueSet StateValueSet 2.16.840.1.113883.3.88.12.80.1 DYNAMIC
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- LanguageCommunication -->

<pattern id="p-OperativeNote_1A_LanguageCommunication_languageCode_2_13_12_i_d_11_i-error_mdht" see="#p-OperativeNote_1A_LanguageCommunication_languageCode_2_13_12_i_d_11_i-error_mdht" name="p-OperativeNote_1A_LanguageCommunication_languageCode_2_13_12_i_d_11_i-error_mdht">
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
	<assert test="cda:languageCode and cda:languageCode[@code]">Error: OperativeNote - 2.13.12.i.d.11.i languageCode
		Conformance: SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5407)
		Analysis: n/a
		Validation message: n/a	</assert>
		<!--
			OCL: not self.languageCode.oclIsUndefined()
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationLanguageCodeP
		-->
	<assert test="cda:languageCode">Error: OperativeNote - 2.13.12.i.d.11.i languageCode
		Conformance: SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language 2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:5407)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- LanguageCommunication -->

<pattern id="p-OperativeNote_1A_LanguageCommunication_preferenceInd_2_13_12_i_d_11_iv-error_mdht" see="#p-OperativeNote_1A_LanguageCommunication_preferenceInd_2_13_12_i_d_11_iv-error_mdht" name="p-OperativeNote_1A_LanguageCommunication_preferenceInd_2_13_12_i_d_11_iv-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/languageCommunication
			UML root path: /GeneralHeaderConstraints/recordTarget/patientRole/patient/languageCommunication
		-->
	<rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication">
		<!--
			OCL: ((not self.preferenceInd.oclIsUndefined()) and self.preferenceInd.isNullFlavorUndefined()) implies (not self.preferenceInd.oclIsUndefined())
			Constraint name: GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationPreferenceInd
		-->
	<assert test="not(cda:preferenceInd and not(cda:preferenceInd/@nullFlavor)) or cda:preferenceInd">Error: OperativeNote - 2.13.12.i.d.11.iv preferenceInd
		Conformance: MAY contain zero or one [0..1] preferenceInd (CONF:5414)
		Analysis: n/a
		Validation message: n/a	</assert>
	</rule>
</pattern>

<!-- ComponentOf -->

<pattern id="p-OperativeNote_2_ComponentOf_encompassingEncounter_2_13_13_i-error_mdht" see="#p-OperativeNote_2_ComponentOf_encompassingEncounter_2_13_13_i-error_mdht" name="p-OperativeNote_2_ComponentOf_encompassingEncounter_2_13_13_i-error_mdht">
		<!--
			UML path: /GeneralHeaderConstraints/componentOf
			UML root path: /GeneralHeaderConstraints/componentOf
		-->
	<rule context="/cda:ClinicalDocument/cda:componentOf">
		<!--
			OCL: self.encompassingEncounter->one(encompassingEncounter : cda::EncompassingEncounter | not encompassingEncounter.oclIsUndefined() and encompassingEncounter.oclIsKindOf(consol::GeneralHeaderConstraints::ComponentOf::EncompassingEncounter))
			Constraint name: GeneralHeaderConstraintsComponentOfEncompassingEncounter
		-->
	<assert test="count(cda:encompassingEncounter)=1">Error: OperativeNote - 2.13.13.i encompassingEncounter
		Conformance: SHALL contain exactly one [1..1] encompassingEncounter (CONF:9956)
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
	<assert test="/cda:ClinicalDocument/cda:documentationOf">Cannot find context /cda:ClinicalDocument/cda:documentationOf</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer</assert>
	<assert test="/cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity">Cannot find context /cda:ClinicalDocument/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity</assert>
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
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.25"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.25']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.25"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:specimen">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:specimen</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:serviceDeliveryLocation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.32"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:serviceDeliveryLocation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.32"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:serviceDeliveryLocation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.32"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:serviceDeliveryLocation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.32"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:serviceDeliveryLocation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.32"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:serviceDeliveryLocation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.32']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:serviceDeliveryLocation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.32"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:performer</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:performer/cda:assignedEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:performer/cda:assignedEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:performer/cda:assignedEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:performer/cda:assignedEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity/cda:representedOrganization">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:performer/cda:assignedEntity/cda:representedOrganization</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity/cda:representedOrganization">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:performer/cda:assignedEntity/cda:representedOrganization</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity/cda:representedOrganization">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:performer/cda:assignedEntity/cda:representedOrganization</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:performer/cda:assignedEntity/cda:representedOrganization">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:performer/cda:assignedEntity/cda:representedOrganization</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:productInstance[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:productInstance[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:productInstance[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:productInstance[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:productInstance[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']/cda:scopingEntity">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:productInstance[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.37"]/cda:scopingEntity</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:productInstance[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.37']/cda:playingDevice">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:productInstance[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.37"]/cda:playingDevice</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship[cda:encounter/@classCode = 'ENC']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:entryRelationship[cda:encounter/@classCode = "ENC"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship[cda:encounter/@classCode = 'ENC']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:entryRelationship[cda:encounter/@classCode = "ENC"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship[cda:encounter/@classCode = 'ENC']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:entryRelationship[cda:encounter/@classCode = "ENC"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship/cda:encounter[@classCode = 'ENC']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:entryRelationship/cda:encounter[@classCode = "ENC"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship/cda:encounter[@classCode = 'ENC']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:entryRelationship/cda:encounter[@classCode = "ENC"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.7.1']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.14']/cda:entryRelationship/cda:encounter[@classCode = 'ENC']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.7.1"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.14"]/cda:entryRelationship/cda:encounter[@classCode = "ENC"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.37"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.37']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.37"]/cda:entry</assert>
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
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.35"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.35"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.35"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.35"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.35']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.35"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.65"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.65"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.65"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.65"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.65"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.34']/cda:entry/cda:act[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.65']/cda:entryRelationship">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.34"]/cda:entry/cda:act[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.65"]/cda:entryRelationship</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = "2.16.840.1.113883.10.20.18.2.9"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.18.2.9"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.18.2.9"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.18.2.9"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.9']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.18.2.9"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.28"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.28']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.28"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.31']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.31"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.27']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.27"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.40']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.40"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.40']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.40"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.40']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.40"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.40']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.40"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.12']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.12"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.12']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.12"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.12']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.12"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.12']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.12"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.14"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.14']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.14"]</assert>
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
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.30"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.30"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.41']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.30"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.41"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.41']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.30"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.41"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.41']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.30"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.41"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.30']/cda:entry/cda:procedure[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.41']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.30"]/cda:entry/cda:procedure[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.41"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.12']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.18.2.12"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.12']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.18.2.12"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.12']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.18.2.12"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.18.2.12']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.18.2.12"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.29"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.29"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.29"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.29"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.29"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.29']/cda:entry">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.29"]/cda:entry</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.22.1"]/cda:entry/cda:encounter[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.49"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.19"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.22.1"]/cda:entry/cda:encounter[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.49"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.19"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.22.1"]/cda:entry/cda:encounter[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.49"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.19"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.22.1"]/cda:entry/cda:encounter[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.49"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.19"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.22.1"]/cda:entry/cda:encounter[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.49"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.19"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.22.1"]/cda:entry/cda:encounter[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.49"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.19"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.22.1"]/cda:entry/cda:encounter[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.49"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.19"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.22.1"]/cda:entry/cda:encounter[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.49"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.19"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.22.2.22.1']/cda:entry/cda:encounter[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.49']/cda:entryRelationship/cda:observation[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.19']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.22.2.22.1"]/cda:entry/cda:encounter[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.49"]/cda:entryRelationship/cda:observation[cda:templateId/@root = "2.16.840.1.113883.10.20.22.4.19"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.13']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.13"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.13']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.13"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.13']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.13"]</assert>
	<assert test="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = '2.16.840.1.113883.10.20.7.13']">Cannot find context /cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId/@root = "2.16.840.1.113883.10.20.7.13"]</assert>
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
	<assert test="/cda:ClinicalDocument/cda:componentOf">Cannot find context /cda:ClinicalDocument/cda:componentOf</assert>
	</rule>
</pattern>

<phase id = "errors">

	<active pattern = "p-OperativeNote_1A_OperativeNote_code_2_13_3-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_effectiveTime_2_13_7-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_documentationOf_2_13_4-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_versionNumber_2_13_11-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_typeId_2_13_3-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_authorization_2_13_24-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_informant_2_13_20-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_inFulfillmentOf_2_13_22-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_recordTarget_2_13_12-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_languageCode_2_13_9-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_realmCode_2_13_2-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_custodian_2_13_16-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_authenticator_2_13_19-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_informationRecipient_2_13_17-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_confidentialityCode_2_13_8-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_id_2_13_4-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_setId_2_13_10-error_mdht"/>
	<active pattern = "p-OperativeNote_2_OperativeNote_component_2_13_5-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_author_2_13_14-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_legalAuthenticator_2_13_18-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_dataEnterer_2_13_15-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_title_2_13_6-error_mdht"/>
	<active pattern = "p-OperativeNote_2_OperativeNote_componentOf_2_13_13-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_supportParticipant_2_13_21-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_OperativeNote_templateId_2_13_1-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_DocumentationOf_serviceEvent_2_13_4_i-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeNoHighIfWidth_2_13_4_i_g-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_ServiceEvent_code_2_13_4_i_a-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeHasLow_2_13_4_i_e-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_ServiceEvent_primaryPerformer_2_13_4_i_c-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventEffectiveTimeHasHighWhenNoWidth_2_13_4_i_f-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_ServiceEvent_effectiveTime_2_13_4_i_b-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_ServiceEvent_OperativeNoteDocumentationOfServiceEventProcedureCodes_2_13_4_i_d-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_PrimaryPerformer_typeCode_2_13_4_i_c_1-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_PrimaryPerformer_assignedEntity_2_13_4_i_c_2-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_AssignedEntity_code_2_13_4_i_c_2_i-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_structuredBody_2_13_5_i-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_procedureFindingsSection_2_13_5_i_f-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_operativeNoteSurgicalProcedureSection_2_13_5_i_k-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_procedureDispositionSection_2_13_5_i_n-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_procedureImplantsSection_2_13_5_i_i-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_anesthesiaSection_2_13_5_i_a-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_procedureIndicationsSection_2_13_5_i_o-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_procedureEstimatedBloodLossSection_2_13_5_i_e-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_procedureDescriptionSection_2_13_5_i_h-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_complicationsSection_2_13_5_i_b-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_surgicalDrainsSection_2_13_5_i_p-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_preoperativeDiagnosisSection_2_13_5_i_d-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_postoperativeDiagnosisSection_2_13_5_i_c-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_planOfCareSection_2_13_5_i_l-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_plannedProcedureSection_2_13_5_i_m-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_procedureSpecimensTakenSection_2_13_5_i_g-error_mdht"/>
	<active pattern = "p-OperativeNote_2_StructuredBody_operativeNoteFluidSection_2_13_5_i_j-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_anesthesiaSection_2_13_5_i_a_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_AnesthesiaSection_title_3_12_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_AnesthesiaSection_entry_3_11_6-error_mdht"/>
	<active pattern = "p-OperativeNote_2_AnesthesiaSection_templateId_3_11_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_AnesthesiaSection_text_3_12_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_AnesthesiaSection_entry_3_11_5-error_mdht"/>
	<active pattern = "p-OperativeNote_2_AnesthesiaSection_code_3_11_2-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedureEntry_procedureActivityProcedure_3_11_5_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_templateId_4_121_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_performer_4_121_13-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_17-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_id_4_122_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_moodCode_4_121_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_targetSiteCode_4_121_10-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_statusCode_4_121_6-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_code_4_122_5-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_serviceDeliveryLocation_4_122_12-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_effectiveTime_4_122_7-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_15-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_18-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_ProcedureActivityProcedureCodeCodeSystems_4_121_19-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_priorityCode_4_122_8-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_methodCode_4_122_9-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_productInstance_4_122_14-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_classCode_4_122_2-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_entryRelationship_4_121_16-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityProcedure_specimen_4_121_11-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureSpecimen_ProcedureActivityProcedureProcedureSpecimenSpecimenRole_4_121_11_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ServiceDeliveryLocation_code_4_122_12_iii-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ServiceDeliveryLocation_addr_4_122_12_iv-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ServiceDeliveryLocation_ServiceDeliveryLocationHasPlayingEntity_4_122_12_vi-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ServiceDeliveryLocation_templateId_4_122_12_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ServiceDeliveryLocation_classCode_4_122_12_ii-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ServiceDeliveryLocation_telecom_4_122_12_v-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityPerformer_assignedEntity_4_121_13_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityAssignedEntity_addr_4_121_13_i_b-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityAssignedEntity_representedOrganization_4_122_7_i_d-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityAssignedEntity_telecom_4_121_13_i_c-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityAssignedEntity_id_4_122_7_i_a-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_id_4_122_7_i_d_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_name_4_122_7_i_d_2-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_addr_4_122_7_i_d_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityRepresentedOrganization_telecom_4_122_7_i_d_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProductInstance_id_4_122_14_iii-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProductInstance_scopingEntity_4_122_14_iv-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProductInstance_templateId_4_122_14_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProductInstance_playingDevice_4_122_14_v-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProductInstance_classCode_4_122_14_ii-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ScopingEntity_id_4_122_14_iv_a-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlayingDevice_code_4_122_14_v_a-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_EntryRelationship_typeCode_4_121_15_ii-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_EntryRelationship_procedureActivityEncounter_4_121_15_iii-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_EntryRelationship_inversionInd_4_121_15_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityEncounter_classCode_4_121_15_iii_a-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityEncounter_moodCode_4_121_15_iii_b-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureActivityEncounter_id_4_121_15_iii_c-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_complicationsSection_2_13_5_i_b_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ComplicationsSection_entry_3_18_5-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ComplicationsSection_text_3_19_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ComplicationsSection_title_3_19_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ComplicationsSection_templateId_3_18_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ComplicationsSection_code_3_18_2-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservationEntry_problemObservation_3_18_5_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_statusCode_4_114_8-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_13-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_code_4_114_6-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_classCode_4_115_2-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_id_4_66_5-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_moodCode_4_115_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_ProblemObservationValueNullFlavor_4_114_14-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_ProblemObservationValueTranslation_4_114_15-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_11-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_negationInd_4_114_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_entryRelationship_4_114_12-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_text_4_114_7-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_effectiveTime_4_114_9-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_value_4_114_10-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservation_templateId_4_114_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_AgeObservationEntryRelationship_ageObservation_4_114_11_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_AgeObservation_templateId_4_6_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_AgeObservation_value_4_6_6-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_AgeObservation_code_4_6_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_AgeObservation_AgeObservationValueUnits_4_6_7-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_AgeObservation_moodCode_4_6_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_AgeObservation_statusCode_4_6_5-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_AgeObservation_classCode_4_6_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_postoperativeDiagnosisSection_2_13_5_i_c_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PostoperativeDiagnosisSection_text_3_83_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PostoperativeDiagnosisSection_templateId_3_83_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PostoperativeDiagnosisSection_title_3_83_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PostoperativeDiagnosisSection_code_3_83_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_preoperativeDiagnosisSection_2_13_5_i_d_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PreoperativeDiagnosisSection_text_3_87_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PreoperativeDiagnosisSection_entry_3_86_5-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PreoperativeDiagnosisSection_templateId_3_86_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PreoperativeDiagnosisSection_code_3_86_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PreoperativeDiagnosisSection_title_3_87_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PreoperativeDiagnosisEntry_preoperativeDiagnosis_3_86_5_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PreoperativeDiagnosis_templateId_4_108_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PreoperativeDiagnosis_code_4_108_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PreoperativeDiagnosis_entryRelationship_4_108_5-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PreoperativeDiagnosis_classCode_4_109_2-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PreoperativeDiagnosis_moodCode_4_109_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservationEntryRelationship_problemObservation_4_108_5_i-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_procedureEstimatedBloodLossSection_2_13_5_i_e_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureEstimatedBloodLossSection_title_3_94_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureEstimatedBloodLossSection_code_3_94_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureEstimatedBloodLossSection_templateId_3_94_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureEstimatedBloodLossSection_text_3_94_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_procedureFindingsSection_2_13_5_i_f_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureFindingsSection_templateId_3_95_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureFindingsSection_code_3_95_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureFindingsSection_title_3_96_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureFindingsSection_text_3_96_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureFindingsSection_entry_3_95_5-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProblemObservationEntry_problemObservation_3_95_5_i-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_procedureSpecimensTakenSection_2_13_5_i_g_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureSpecimensTakenSection_templateId_3_100_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureSpecimensTakenSection_text_3_100_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureSpecimensTakenSection_title_3_100_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureSpecimensTakenSection_code_3_100_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_procedureDescriptionSection_2_13_5_i_h_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureDescriptionSection_text_3_92_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureDescriptionSection_templateId_3_92_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureDescriptionSection_code_3_92_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureDescriptionSection_title_3_92_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_procedureImplantsSection_2_13_5_i_i_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureImplantsSection_title_3_97_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureImplantsSection_code_3_97_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureImplantsSection_templateId_3_97_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureImplantsSection_text_3_97_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_operativeNoteFluidSection_2_13_5_i_j_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_OperativeNoteFluidSection_templateId_3_72_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_OperativeNoteFluidSection_text_3_72_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_OperativeNoteFluidSection_title_3_72_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_OperativeNoteFluidSection_code_3_72_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_operativeNoteSurgicalProcedureSection_2_13_5_i_k_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_title_3_73_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_code_3_73_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_templateId_3_73_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_OperativeNoteSurgicalProcedureSection_text_3_73_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_planOfCareSection_2_13_5_i_l_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareSection_entry_3_81_7-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PlanOfCareSection_text_3_82_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareSection_entry_3_81_10-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareSection_entry_3_81_8-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareSection_entry_3_81_11-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PlanOfCareSection_templateId_3_81_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareSection_entry_3_81_6-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareSection_entry_3_81_9-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PlanOfCareSection_code_3_81_2-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareSection_entry_3_81_5-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PlanOfCareSection_title_3_82_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareActivityActEntry_planOfCareActivityAct_3_81_5_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareActivityAct_id_4_88_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareActivityAct_templateId_4_97_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareActivityAct_classCode_4_88_2-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareActivityAct_moodCode_4_97_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_plannedProcedureSection_2_13_5_i_m_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlannedProcedureSection_entry_3_79_5-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PlannedProcedureSection_text_3_80_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PlannedProcedureSection_code_3_79_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PlannedProcedureSection_templateId_3_79_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_PlannedProcedureSection_title_3_80_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareActivityProcedureEntry_planOfCareActivityProcedure_3_79_5_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareActivityProcedure_moodCode_4_100_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareActivityProcedure_templateId_4_100_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareActivityProcedure_id_4_95_4-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_PlanOfCareActivityProcedure_classCode_4_95_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_procedureDispositionSection_2_13_5_i_n_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureDispositionSection_title_3_93_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureDispositionSection_code_3_93_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureDispositionSection_text_3_93_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureDispositionSection_templateId_3_93_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_procedureIndicationsSection_2_13_5_i_o_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureIndicationsSection_text_3_99_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureIndicationsSection_code_3_98_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureIndicationsSection_templateId_3_98_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_ProcedureIndicationsSection_entry_3_98_5-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ProcedureIndicationsSection_title_3_99_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_IndicationEntry_indication_3_98_5_i-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_Indication_statusCode_4_62_6-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_Indication_value_4_61_8-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_Indication_moodCode_4_62_3-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_Indication_code_4_61_5-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_Indication_effectiveTime_4_62_7-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_Indication_templateId_4_61_1-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_Indication_classCode_4_62_2-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_Indication_IndicationCodeNullFlavor_4_61_9-error_mdht"/>
	<active pattern = "p-OperativeNote_3A_Indication_id_4_61_4-error_mdht"/>
	<active pattern = "p-OperativeNote_2_Component_surgicalDrainsSection_2_13_5_i_p_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_SurgicalDrainsSection_code_3_116_2-error_mdht"/>
	<active pattern = "p-OperativeNote_2_SurgicalDrainsSection_templateId_3_116_1-error_mdht"/>
	<active pattern = "p-OperativeNote_2_SurgicalDrainsSection_text_3_116_3-error_mdht"/>
	<active pattern = "p-OperativeNote_2_SurgicalDrainsSection_title_3_116_4-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Author_assignedAuthor_2_13_14_ii-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_AssignedAuthor_code_2_13_14_ii_b-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmAddress_use_4_4_6_iii_b_1-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmAddress_city_4_4_6_iii_b_4-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmAddress_state_4_4_6_iii_b_3-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmAddress_country_4_4_6_iii_b_2-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmAddress_postalCode_4_4_6_iii_b_5-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmAddress_streetAddressLine_4_4_6_iii_b_6-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_DataEnterer_assignedEntity_2_13_15_i-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_AssignedEntity_code_2_13_15_i_b-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_InformationRecipient_intendedRecipient_2_13_17_i-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Informant_GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity_2_13_20_iii-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_AssignedEntity_code_2_13_20_i_b-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_AssignedEntity_addr_2_13_20_i_c-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_RelatedEntity_addr_2_13_20_ii_a-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_RelatedEntity_person_2_13_20_ii_b-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_ParticipantSupport_GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization_2_13_21_ii-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_RecordTarget_patientRole_2_13_12_i-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_PatientRole_patient_2_13_12_i_d-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Patient_GeneralHeaderConstraintsRecordTargetPatientRolePatientIfSdtcEnforceRaceCode_2_13_12_i_d_12-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Patient_birthplace_2_13_12_i_d_10-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Patient_birthTime_2_13_12_i_d_3-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Patient_languageCommunication_2_13_12_i_d_11-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Patient_guardian_2_13_12_i_d_9-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Patient_ethnicGroupCode_2_13_12_i_d_8-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Patient_raceCode_2_13_12_i_d_6-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmPatientName_suffix_2_19_5_ii_b_1_v-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmPatientName_prefix_2_19_5_ii_b_1_iv-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmPatientName_given_2_19_5_ii_b_1_iii-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmPatientName_use_2_19_5_ii_b_1_i-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmPatientName_family_2_19_5_ii_b_1_ii-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_USRealmPatientName_GeneralHeaderConstraints_2_10-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_TS_value_2_13_12_i_d_3_i-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Guardian_GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCodeFromPersonalRelationshipOrResponsibleParty_2_13_12_i_d_9_v-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Guardian_telecom_2_13_12_i_d_9_iii-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Guardian_code_2_13_12_i_d_9_i-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_TEL_use_2_13_12_i_d_9_iii_a-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Birthplace_place_2_13_12_i_d_10_i-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_Place_GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceHasState_2_13_12_i_d_10_i_b-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_LanguageCommunication_languageCode_2_13_12_i_d_11_i-error_mdht"/>
	<active pattern = "p-OperativeNote_1A_LanguageCommunication_preferenceInd_2_13_12_i_d_11_iv-error_mdht"/>
	<active pattern = "p-OperativeNote_2_ComponentOf_encompassingEncounter_2_13_13_i-error_mdht"/>

</phase>


<phase id = "contexts">

	<active pattern = "allcontexts_mdht"/>

</phase>


</schema>
