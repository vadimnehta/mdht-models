/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package org.openhealthtools.mdht.uml.cda.consol;

import java.util.Map;

import org.eclipse.emf.common.util.DiagnosticChain;

import org.openhealthtools.mdht.uml.cda.ClinicalDocument;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>General Header Constraints</b></em>'.
 * <!-- end-user-doc -->
 *
 * <!-- begin-model-doc -->
 * This section describes constraints that apply to the header for all documents within the scope of this implementation guide. Header constraints specific to each document type are described in the appropriate document-specific section below
 * 
 * Document Type Codes
 * CDA R2 states that LOINC is the preferred vocabulary for document type codes, which specify the type of document being exchanged (e.g., History and Physical). Each document type in this guide recommends a single preferred clinicalDocument/code, with further specification provided by author or performer, setting, or specialty
 * <!-- end-model-doc -->
 *
 *
 * @see org.openhealthtools.mdht.uml.cda.consol.ConsolPackage#getGeneralHeaderConstraints()
 * @model annotation="http://www.openhealthtools.org/mdht/uml/cda/annotation templateId.root='2.16.840.1.113883.10.20.22.1.1' constraints.validation.error='GeneralHeaderConstraintsTemplateId GeneralHeaderConstraintsRealmCode GeneralHeaderConstraintsTypeId GeneralHeaderConstraintsId GeneralHeaderConstraintsCode GeneralHeaderConstraintsTitle GeneralHeaderConstraintsEffectiveTime GeneralHeaderConstraintsConfidentialityCode GeneralHeaderConstraintsLanguageCode GeneralHeaderConstraintsAuthor GeneralHeaderConstraintsCustodian GeneralHeaderConstraintsRecordTarget GeneralHeaderConstraintsAuthorAssignedAuthorAuthoringDeviceManufacturerModelName GeneralHeaderConstraintsAuthorAssignedAuthorAuthoringDeviceSoftwareName GeneralHeaderConstraintsAuthorAssignedAuthorHasAssignedPersonOrAssignedAuthoringDevice GeneralHeaderConstraintsAuthorAssignedAuthorHasNationalProviderIdentifier GeneralHeaderConstraintsAuthorAssignedAuthorAddr GeneralHeaderConstraintsAuthorAssignedAuthorId GeneralHeaderConstraintsAuthorAssignedAuthorTelecom GeneralHeaderConstraintsAuthorAssignedAuthor GeneralHeaderConstraintsDataEntererAssignedEntityHasNationalProviderIdentifier GeneralHeaderConstraintsDataEntererAssignedEntityAddr GeneralHeaderConstraintsDataEntererAssignedEntityCode GeneralHeaderConstraintsDataEntererAssignedEntityId GeneralHeaderConstraintsDataEntererAssignedEntityTelecom GeneralHeaderConstraintsDataEntererAssignedEntityAssignedPerson GeneralHeaderConstraintsCustodianAssignedCustodianCustodianOrganizationHasNationalProviderIdentifier GeneralHeaderConstraintsCustodianAssignedCustodianCustodianOrganizationAddr GeneralHeaderConstraintsCustodianAssignedCustodianCustodianOrganizationId GeneralHeaderConstraintsCustodianAssignedCustodianCustodianOrganizationName GeneralHeaderConstraintsCustodianAssignedCustodianCustodianOrganizationTelecom GeneralHeaderConstraintsCustodianAssignedCustodianRepresentedCustodianOrganization GeneralHeaderConstraintsCustodianAssignedCustodian GeneralHeaderConstraintsInformationRecipientIntendedRecipientOrganizationName GeneralHeaderConstraintsInformationRecipientIntendedRecipient GeneralHeaderConstraintsLegalAuthenticatorAssignedEntityHasNationalProviderIdentifier GeneralHeaderConstraintsLegalAuthenticatorAssignedEntityAddr GeneralHeaderConstraintsLegalAuthenticatorAssignedEntityId GeneralHeaderConstraintsLegalAuthenticatorAssignedEntityTelecom GeneralHeaderConstraintsLegalAuthenticatorAssignedEntityAssignedPerson GeneralHeaderConstraintsLegalAuthenticatorTime GeneralHeaderConstraintsLegalAuthenticatorSignatureCode GeneralHeaderConstraintsAuthenticatorAssignedEntityHasNationalProviderIdentifier GeneralHeaderConstraintsAuthenticatorAssignedEntityAddr GeneralHeaderConstraintsAuthenticatorAssignedEntityId GeneralHeaderConstraintsAuthenticatorAssignedEntityTelecom GeneralHeaderConstraintsAuthenticatorTime GeneralHeaderConstraintsAuthenticatorSignatureCode GeneralHeaderConstraintsAuthenticatorAssignedEntity GeneralHeaderConstraintsRecordTargetPatientRoleProviderOrganizationAddr GeneralHeaderConstraintsRecordTargetPatientRoleProviderOrganizationId GeneralHeaderConstraintsRecordTargetPatientRoleProviderOrganizationName GeneralHeaderConstraintsRecordTargetPatientRoleProviderOrganizationTelecom GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationLanguageCode GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationProficiencyLevelCode GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationModeCode GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceAddr GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlace GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianGuardianPerson GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthTimePreciseToYear GeneralHeaderConstraintsRecordTargetPatientRolePatientMaritalStatusCode GeneralHeaderConstraintsRecordTargetPatientRolePatientName GeneralHeaderConstraintsRecordTargetPatientRolePatientRaceCode GeneralHeaderConstraintsRecordTargetPatientRolePatientReligiousAffiliationCode GeneralHeaderConstraintsRecordTargetPatientRoleAddr GeneralHeaderConstraintsRecordTargetPatientRoleId GeneralHeaderConstraintsRecordTargetPatientRoleTelecom GeneralHeaderConstraintsRecordTargetPatientRolePatient GeneralHeaderConstraintsRecordTargetPatientRole GeneralHeaderConstraintsComponentOfEncompassingEncounterEffectiveTime GeneralHeaderConstraintsComponentOfEncompassingEncounterId GeneralHeaderConstraintsComponentOfEncompassingEncounter GeneralHeaderConstraintsInformantRelatedEntityPerson GeneralHeaderConstraintsInformantAssignedEntityHasNationalProviderIdentifier GeneralHeaderConstraintsInformantAssignedEntityCode GeneralHeaderConstraintsInformantAssignedEntityPerson GeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity GeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization GeneralHeaderConstraintsInFulfillmentOfOrderId GeneralHeaderConstraintsInFulfillmentOfOrder' constraints.validation.warning='GeneralHeaderConstraintsLegalAuthenticator GeneralHeaderConstraintsAuthorAssignedAuthorCode GeneralHeaderConstraintsLegalAuthenticatorAssignedEntityCode GeneralHeaderConstraintsRecordTargetPatientRoleProviderOrganizationHasNationalProviderIdentifier GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianAddr GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCode GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthTimePreciseToDay GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthTime GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunication GeneralHeaderConstraintsInformantRelatedEntityAddr GeneralHeaderConstraintsInformantAssignedEntityAddr GeneralHeaderConstraintsInformantAssignedEntityId' confidentialityCode.codeSystemName='ConfidentialityCode' realmCode.code='US' confidentialityCode.codeSystem='2.16.840.1.113883.5.25' constraints.validation.info='GeneralHeaderConstraintsSetId GeneralHeaderConstraintsVersionNumber GeneralHeaderConstraintsDataEnterer GeneralHeaderConstraintsInformationRecipient GeneralHeaderConstraintsAuthenticator GeneralHeaderConstraintsComponentOf GeneralHeaderConstraintsInformant GeneralHeaderConstraintsSupportParticipant GeneralHeaderConstraintsInFulfillmentOf GeneralHeaderConstraintsInformationRecipientIntendedRecipientInformationRecipient GeneralHeaderConstraintsInformationRecipientIntendedRecipientRecievedOrganization GeneralHeaderConstraintsAuthenticatorAssignedEntityCode GeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationPreferenceInd GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianTelecom GeneralHeaderConstraintsRecordTargetPatientRolePatientEthnicGroupCode GeneralHeaderConstraintsRecordTargetPatientRolePatientGuardian GeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplace GeneralHeaderConstraintsParticipantSupportTime'"
 * @generated
 */
public interface GeneralHeaderConstraints extends ClinicalDocument {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.22.1.1')
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.templateId->exists(id : datatypes::II | id.root = \'2.16.840.1.113883.10.20.22.1.1\')'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsTemplateId(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.realmCode->isEmpty() or self.realmCode->exists(element | element.isNullFlavorUndefined())) implies (self.realmCode->size() = 1 and self.realmCode->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CS) and 
	 * let value : datatypes::CS = element.oclAsType(datatypes::CS) in 
	 * value.code = 'US'))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.realmCode->isEmpty() or self.realmCode->exists(element | element.isNullFlavorUndefined())) implies (self.realmCode->size() = 1 and self.realmCode->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CS) and \r\nlet value : datatypes::CS = element.oclAsType(datatypes::CS) in \r\nvalue.code = \'US\'))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRealmCode(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.typeId.oclIsUndefined() or self.typeId.isNullFlavorUndefined()) implies (not self.typeId.oclIsUndefined())
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.typeId.oclIsUndefined() or self.typeId.isNullFlavorUndefined()) implies (not self.typeId.oclIsUndefined())'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsTypeId(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.id.oclIsUndefined() or self.id.isNullFlavorUndefined()) implies (not self.id.oclIsUndefined())
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.id.oclIsUndefined() or self.id.isNullFlavorUndefined()) implies (not self.id.oclIsUndefined())'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsId(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsCode(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.title.oclIsUndefined() or self.title.isNullFlavorUndefined()) implies (not self.title.oclIsUndefined())
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.title.oclIsUndefined() or self.title.isNullFlavorUndefined()) implies (not self.title.oclIsUndefined())'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsTitle(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.effectiveTime.oclIsUndefined() or self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.effectiveTime.oclIsUndefined() or self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsEffectiveTime(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.confidentialityCode.oclIsUndefined() or self.confidentialityCode.isNullFlavorUndefined()) implies (not self.confidentialityCode.oclIsUndefined() and self.confidentialityCode.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = self.confidentialityCode.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.5.25' and not value.code.oclIsUndefined()))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.confidentialityCode.oclIsUndefined() or self.confidentialityCode.isNullFlavorUndefined()) implies (not self.confidentialityCode.oclIsUndefined() and self.confidentialityCode.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = self.confidentialityCode.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.5.25\' and not value.code.oclIsUndefined()))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsConfidentialityCode(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.languageCode.oclIsUndefined() or self.languageCode.isNullFlavorUndefined()) implies (not self.languageCode.oclIsUndefined() and self.languageCode.oclIsKindOf(datatypes::CS) and 
	 * let value : datatypes::CS = self.languageCode.oclAsType(datatypes::CS) in (
	 * not value.code.oclIsUndefined()))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.languageCode.oclIsUndefined() or self.languageCode.isNullFlavorUndefined()) implies (not self.languageCode.oclIsUndefined() and self.languageCode.oclIsKindOf(datatypes::CS) and \r\nlet value : datatypes::CS = self.languageCode.oclAsType(datatypes::CS) in (\r\nnot value.code.oclIsUndefined()))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsLanguageCode(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.setId.oclIsUndefined() or self.setId.isNullFlavorUndefined()) implies (not self.setId.oclIsUndefined())
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.setId.oclIsUndefined() or self.setId.isNullFlavorUndefined()) implies (not self.setId.oclIsUndefined())'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsSetId(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.versionNumber.oclIsUndefined() or self.versionNumber.isNullFlavorUndefined()) implies (not self.versionNumber.oclIsUndefined())
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.versionNumber.oclIsUndefined() or self.versionNumber.isNullFlavorUndefined()) implies (not self.versionNumber.oclIsUndefined())'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsVersionNumber(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.author->exists(author : cda::Author | not author.oclIsUndefined() and author.oclIsKindOf(cda::Author))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.author->exists(author : cda::Author | not author.oclIsUndefined() and author.oclIsKindOf(cda::Author))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthor(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.dataEnterer->one(dataEnterer : cda::DataEnterer | not dataEnterer.oclIsUndefined() and dataEnterer.oclIsKindOf(cda::DataEnterer))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.dataEnterer->one(dataEnterer : cda::DataEnterer | not dataEnterer.oclIsUndefined() and dataEnterer.oclIsKindOf(cda::DataEnterer))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsDataEnterer(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.custodian->one(custodian : cda::Custodian | not custodian.oclIsUndefined() and custodian.oclIsKindOf(cda::Custodian))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.custodian->one(custodian : cda::Custodian | not custodian.oclIsUndefined() and custodian.oclIsKindOf(cda::Custodian))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsCustodian(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.informationRecipient->exists(informationRecipient : cda::InformationRecipient | not informationRecipient.oclIsUndefined() and informationRecipient.oclIsKindOf(cda::InformationRecipient))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.informationRecipient->exists(informationRecipient : cda::InformationRecipient | not informationRecipient.oclIsUndefined() and informationRecipient.oclIsKindOf(cda::InformationRecipient))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformationRecipient(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.legalAuthenticator->one(legalAuthenticator : cda::LegalAuthenticator | not legalAuthenticator.oclIsUndefined() and legalAuthenticator.oclIsKindOf(cda::LegalAuthenticator))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.legalAuthenticator->one(legalAuthenticator : cda::LegalAuthenticator | not legalAuthenticator.oclIsUndefined() and legalAuthenticator.oclIsKindOf(cda::LegalAuthenticator))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsLegalAuthenticator(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.authenticator->exists(authenticator : cda::Authenticator | not authenticator.oclIsUndefined() and authenticator.oclIsKindOf(cda::Authenticator))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.authenticator->exists(authenticator : cda::Authenticator | not authenticator.oclIsUndefined() and authenticator.oclIsKindOf(cda::Authenticator))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthenticator(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.recordTarget->exists(recordTarget : cda::RecordTarget | not recordTarget.oclIsUndefined() and recordTarget.oclIsKindOf(cda::RecordTarget))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.recordTarget->exists(recordTarget : cda::RecordTarget | not recordTarget.oclIsUndefined() and recordTarget.oclIsKindOf(cda::RecordTarget))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTarget(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.componentOf->one(componentOf : cda::Component1 | not componentOf.oclIsUndefined() and componentOf.oclIsKindOf(cda::Component1))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.componentOf->one(componentOf : cda::Component1 | not componentOf.oclIsUndefined() and componentOf.oclIsKindOf(cda::Component1))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsComponentOf(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.informant->one(informant : cda::Informant12 | not informant.oclIsUndefined() and informant.oclIsKindOf(cda::Informant12))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.informant->one(informant : cda::Informant12 | not informant.oclIsUndefined() and informant.oclIsKindOf(cda::Informant12))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformant(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.participant->exists(participant : cda::Participant1 | not participant.oclIsUndefined() and participant.oclIsKindOf(cda::Participant1))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.participant->exists(participant : cda::Participant1 | not participant.oclIsUndefined() and participant.oclIsKindOf(cda::Participant1))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsSupportParticipant(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * self.inFulfillmentOf->exists(inFulfillmentOf : cda::InFulfillmentOf | not inFulfillmentOf.oclIsUndefined() and inFulfillmentOf.oclIsKindOf(cda::InFulfillmentOf))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='self.inFulfillmentOf->exists(inFulfillmentOf : cda::InFulfillmentOf | not inFulfillmentOf.oclIsUndefined() and inFulfillmentOf.oclIsKindOf(cda::InFulfillmentOf))'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInFulfillmentOf(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) and self.author.assignedAuthor.assignedAuthoringDevice->exists(not oclIsUndefined()) then self.author.assignedAuthor.assignedAuthoringDevice->forAll((manufacturerModelName.oclIsUndefined() or manufacturerModelName.isNullFlavorUndefined()) implies (not manufacturerModelName.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) and self.author.assignedAuthor.assignedAuthoringDevice->exists(not oclIsUndefined()) then self.author.assignedAuthor.assignedAuthoringDevice->forAll((manufacturerModelName.oclIsUndefined() or manufacturerModelName.isNullFlavorUndefined()) implies (not manufacturerModelName.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthorAssignedAuthorAuthoringDeviceManufacturerModelName(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) and self.author.assignedAuthor.assignedAuthoringDevice->exists(not oclIsUndefined()) then self.author.assignedAuthor.assignedAuthoringDevice->forAll((softwareName.oclIsUndefined() or softwareName.isNullFlavorUndefined()) implies (not softwareName.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) and self.author.assignedAuthor.assignedAuthoringDevice->exists(not oclIsUndefined()) then self.author.assignedAuthor.assignedAuthoringDevice->forAll((softwareName.oclIsUndefined() or softwareName.isNullFlavorUndefined()) implies (not softwareName.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthorAssignedAuthorAuthoringDeviceSoftwareName(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll(assignedPerson.oclIsUndefined() xor assignedAuthoringDevice.oclIsUndefined()) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll(assignedPerson.oclIsUndefined() xor assignedAuthoringDevice.oclIsUndefined()) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthorAssignedAuthorHasAssignedPersonOrAssignedAuthoringDevice(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll(id->exists( root='2.16.840.1.113883.4.6' )) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll(id->exists( root=\'2.16.840.1.113883.4.6\' )) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthorAssignedAuthorHasNationalProviderIdentifier(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthorAssignedAuthorAddr(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthorAssignedAuthorCode(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthorAssignedAuthorId(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.author->exists(not oclIsUndefined()) and self.author.assignedAuthor->exists(not oclIsUndefined()) then self.author.assignedAuthor->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthorAssignedAuthorTelecom(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.author->exists(not oclIsUndefined()) then self.author->forAll(assignedAuthor->one(assignedAuthor : cda::AssignedAuthor | not assignedAuthor.oclIsUndefined() and assignedAuthor.oclIsKindOf(cda::AssignedAuthor))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.author->exists(not oclIsUndefined()) then self.author->forAll(assignedAuthor->one(assignedAuthor : cda::AssignedAuthor | not assignedAuthor.oclIsUndefined() and assignedAuthor.oclIsKindOf(cda::AssignedAuthor))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthorAssignedAuthor(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll(id->exists( root='2.16.840.1.113883.4.6' )) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll(id->exists( root=\'2.16.840.1.113883.4.6\' )) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsDataEntererAssignedEntityHasNationalProviderIdentifier(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsDataEntererAssignedEntityAddr(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (code.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = code.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.6.101'))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (code.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = code.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.6.101\'))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsDataEntererAssignedEntityCode(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsDataEntererAssignedEntityId(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsDataEntererAssignedEntityTelecom(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll(assignedPerson->exists(assignedPerson : cda::Person | not assignedPerson.oclIsUndefined() and assignedPerson.oclIsKindOf(cda::Person))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.dataEnterer->exists(not oclIsUndefined()) and self.dataEnterer.assignedEntity->exists(not oclIsUndefined()) then self.dataEnterer.assignedEntity->forAll(assignedPerson->exists(assignedPerson : cda::Person | not assignedPerson.oclIsUndefined() and assignedPerson.oclIsKindOf(cda::Person))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsDataEntererAssignedEntityAssignedPerson(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian.representedCustodianOrganization->exists(not oclIsUndefined()) then self.custodian.assignedCustodian.representedCustodianOrganization->forAll(id->exists( root='2.16.840.1.113883.4.6' )) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian.representedCustodianOrganization->exists(not oclIsUndefined()) then self.custodian.assignedCustodian.representedCustodianOrganization->forAll(id->exists( root=\'2.16.840.1.113883.4.6\' )) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsCustodianAssignedCustodianCustodianOrganizationHasNationalProviderIdentifier(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian.representedCustodianOrganization->exists(not oclIsUndefined()) then self.custodian.assignedCustodian.representedCustodianOrganization->forAll((addr.oclIsUndefined() or addr.isNullFlavorUndefined()) implies (not addr.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian.representedCustodianOrganization->exists(not oclIsUndefined()) then self.custodian.assignedCustodian.representedCustodianOrganization->forAll((addr.oclIsUndefined() or addr.isNullFlavorUndefined()) implies (not addr.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsCustodianAssignedCustodianCustodianOrganizationAddr(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian.representedCustodianOrganization->exists(not oclIsUndefined()) then self.custodian.assignedCustodian.representedCustodianOrganization->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian.representedCustodianOrganization->exists(not oclIsUndefined()) then self.custodian.assignedCustodian.representedCustodianOrganization->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsCustodianAssignedCustodianCustodianOrganizationId(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian.representedCustodianOrganization->exists(not oclIsUndefined()) then self.custodian.assignedCustodian.representedCustodianOrganization->forAll((name.oclIsUndefined() or name.isNullFlavorUndefined()) implies (not name.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian.representedCustodianOrganization->exists(not oclIsUndefined()) then self.custodian.assignedCustodian.representedCustodianOrganization->forAll((name.oclIsUndefined() or name.isNullFlavorUndefined()) implies (not name.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsCustodianAssignedCustodianCustodianOrganizationName(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian.representedCustodianOrganization->exists(not oclIsUndefined()) then self.custodian.assignedCustodian.representedCustodianOrganization->forAll((telecom.oclIsUndefined() or telecom.isNullFlavorUndefined()) implies (not telecom.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian.representedCustodianOrganization->exists(not oclIsUndefined()) then self.custodian.assignedCustodian.representedCustodianOrganization->forAll((telecom.oclIsUndefined() or telecom.isNullFlavorUndefined()) implies (not telecom.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsCustodianAssignedCustodianCustodianOrganizationTelecom(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) then self.custodian.assignedCustodian->forAll(representedCustodianOrganization->one(representedCustodianOrganization : cda::CustodianOrganization | not representedCustodianOrganization.oclIsUndefined() and representedCustodianOrganization.oclIsKindOf(cda::CustodianOrganization))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.custodian->exists(not oclIsUndefined()) and self.custodian.assignedCustodian->exists(not oclIsUndefined()) then self.custodian.assignedCustodian->forAll(representedCustodianOrganization->one(representedCustodianOrganization : cda::CustodianOrganization | not representedCustodianOrganization.oclIsUndefined() and representedCustodianOrganization.oclIsKindOf(cda::CustodianOrganization))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsCustodianAssignedCustodianRepresentedCustodianOrganization(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.custodian->exists(not oclIsUndefined()) then self.custodian->forAll(assignedCustodian->one(assignedCustodian : cda::AssignedCustodian | not assignedCustodian.oclIsUndefined() and assignedCustodian.oclIsKindOf(cda::AssignedCustodian))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.custodian->exists(not oclIsUndefined()) then self.custodian->forAll(assignedCustodian->one(assignedCustodian : cda::AssignedCustodian | not assignedCustodian.oclIsUndefined() and assignedCustodian.oclIsKindOf(cda::AssignedCustodian))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsCustodianAssignedCustodian(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informationRecipient->exists(not oclIsUndefined()) and self.informationRecipient.intendedRecipient->exists(not oclIsUndefined()) and self.informationRecipient.intendedRecipient.receivedOrganization->exists(not oclIsUndefined()) then self.informationRecipient.intendedRecipient.receivedOrganization->forAll((name->isEmpty() or name->exists(element | element.isNullFlavorUndefined())) implies (not name->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informationRecipient->exists(not oclIsUndefined()) and self.informationRecipient.intendedRecipient->exists(not oclIsUndefined()) and self.informationRecipient.intendedRecipient.receivedOrganization->exists(not oclIsUndefined()) then self.informationRecipient.intendedRecipient.receivedOrganization->forAll((name->isEmpty() or name->exists(element | element.isNullFlavorUndefined())) implies (not name->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformationRecipientIntendedRecipientOrganizationName(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informationRecipient->exists(not oclIsUndefined()) and self.informationRecipient.intendedRecipient->exists(not oclIsUndefined()) then self.informationRecipient.intendedRecipient->forAll(informationRecipient->one(informationRecipient : cda::Person | not informationRecipient.oclIsUndefined() and informationRecipient.oclIsKindOf(cda::Person))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informationRecipient->exists(not oclIsUndefined()) and self.informationRecipient.intendedRecipient->exists(not oclIsUndefined()) then self.informationRecipient.intendedRecipient->forAll(informationRecipient->one(informationRecipient : cda::Person | not informationRecipient.oclIsUndefined() and informationRecipient.oclIsKindOf(cda::Person))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformationRecipientIntendedRecipientInformationRecipient(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informationRecipient->exists(not oclIsUndefined()) and self.informationRecipient.intendedRecipient->exists(not oclIsUndefined()) then self.informationRecipient.intendedRecipient->forAll(receivedOrganization->one(receivedOrganization : cda::Organization | not receivedOrganization.oclIsUndefined() and receivedOrganization.oclIsKindOf(cda::Organization))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informationRecipient->exists(not oclIsUndefined()) and self.informationRecipient.intendedRecipient->exists(not oclIsUndefined()) then self.informationRecipient.intendedRecipient->forAll(receivedOrganization->one(receivedOrganization : cda::Organization | not receivedOrganization.oclIsUndefined() and receivedOrganization.oclIsKindOf(cda::Organization))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformationRecipientIntendedRecipientRecievedOrganization(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informationRecipient->exists(not oclIsUndefined()) then self.informationRecipient->forAll(intendedRecipient->one(intendedRecipient : cda::IntendedRecipient | not intendedRecipient.oclIsUndefined() and intendedRecipient.oclIsKindOf(cda::IntendedRecipient))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informationRecipient->exists(not oclIsUndefined()) then self.informationRecipient->forAll(intendedRecipient->one(intendedRecipient : cda::IntendedRecipient | not intendedRecipient.oclIsUndefined() and intendedRecipient.oclIsKindOf(cda::IntendedRecipient))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformationRecipientIntendedRecipient(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll(id->exists( root='2.16.840.1.113883.4.6' )) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll(id->exists( root=\'2.16.840.1.113883.4.6\' )) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsLegalAuthenticatorAssignedEntityHasNationalProviderIdentifier(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsLegalAuthenticatorAssignedEntityAddr(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (code.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = code.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.6.101'))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (code.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = code.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.6.101\'))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsLegalAuthenticatorAssignedEntityCode(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsLegalAuthenticatorAssignedEntityId(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsLegalAuthenticatorAssignedEntityTelecom(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll(assignedPerson->one(assignedPerson : cda::Person | not assignedPerson.oclIsUndefined() and assignedPerson.oclIsKindOf(cda::Person))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.legalAuthenticator->exists(not oclIsUndefined()) and self.legalAuthenticator.assignedEntity->exists(not oclIsUndefined()) then self.legalAuthenticator.assignedEntity->forAll(assignedPerson->one(assignedPerson : cda::Person | not assignedPerson.oclIsUndefined() and assignedPerson.oclIsKindOf(cda::Person))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsLegalAuthenticatorAssignedEntityAssignedPerson(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.legalAuthenticator->exists(not oclIsUndefined()) then self.legalAuthenticator->forAll((time.oclIsUndefined() or time.isNullFlavorUndefined()) implies (not time.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.legalAuthenticator->exists(not oclIsUndefined()) then self.legalAuthenticator->forAll((time.oclIsUndefined() or time.isNullFlavorUndefined()) implies (not time.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsLegalAuthenticatorTime(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.legalAuthenticator->exists(not oclIsUndefined()) then self.legalAuthenticator->forAll((signatureCode.oclIsUndefined() or signatureCode.isNullFlavorUndefined()) implies (not signatureCode.oclIsUndefined() and signatureCode.oclIsKindOf(datatypes::CS) and 
	 * let value : datatypes::CS = signatureCode.oclAsType(datatypes::CS) in (
	 * value.code = 's'))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.legalAuthenticator->exists(not oclIsUndefined()) then self.legalAuthenticator->forAll((signatureCode.oclIsUndefined() or signatureCode.isNullFlavorUndefined()) implies (not signatureCode.oclIsUndefined() and signatureCode.oclIsKindOf(datatypes::CS) and \r\nlet value : datatypes::CS = signatureCode.oclAsType(datatypes::CS) in (\r\nvalue.code = \'s\'))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsLegalAuthenticatorSignatureCode(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.authenticator->exists(not oclIsUndefined()) and self.authenticator.assignedEntity->exists(not oclIsUndefined()) then self.authenticator.assignedEntity->forAll(id->exists( root='2.16.840.1.113883.4.6' )) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.authenticator->exists(not oclIsUndefined()) and self.authenticator.assignedEntity->exists(not oclIsUndefined()) then self.authenticator.assignedEntity->forAll(id->exists( root=\'2.16.840.1.113883.4.6\' )) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthenticatorAssignedEntityHasNationalProviderIdentifier(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.authenticator->exists(not oclIsUndefined()) and self.authenticator.assignedEntity->exists(not oclIsUndefined()) then self.authenticator.assignedEntity->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.authenticator->exists(not oclIsUndefined()) and self.authenticator.assignedEntity->exists(not oclIsUndefined()) then self.authenticator.assignedEntity->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthenticatorAssignedEntityAddr(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.authenticator->exists(not oclIsUndefined()) and self.authenticator.assignedEntity->exists(not oclIsUndefined()) then self.authenticator.assignedEntity->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.authenticator->exists(not oclIsUndefined()) and self.authenticator.assignedEntity->exists(not oclIsUndefined()) then self.authenticator.assignedEntity->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthenticatorAssignedEntityCode(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.authenticator->exists(not oclIsUndefined()) and self.authenticator.assignedEntity->exists(not oclIsUndefined()) then self.authenticator.assignedEntity->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.authenticator->exists(not oclIsUndefined()) and self.authenticator.assignedEntity->exists(not oclIsUndefined()) then self.authenticator.assignedEntity->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthenticatorAssignedEntityId(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.authenticator->exists(not oclIsUndefined()) and self.authenticator.assignedEntity->exists(not oclIsUndefined()) then self.authenticator.assignedEntity->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.authenticator->exists(not oclIsUndefined()) and self.authenticator.assignedEntity->exists(not oclIsUndefined()) then self.authenticator.assignedEntity->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthenticatorAssignedEntityTelecom(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.authenticator->exists(not oclIsUndefined()) then self.authenticator->forAll((time.oclIsUndefined() or time.isNullFlavorUndefined()) implies (not time.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.authenticator->exists(not oclIsUndefined()) then self.authenticator->forAll((time.oclIsUndefined() or time.isNullFlavorUndefined()) implies (not time.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthenticatorTime(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.authenticator->exists(not oclIsUndefined()) then self.authenticator->forAll((signatureCode.oclIsUndefined() or signatureCode.isNullFlavorUndefined()) implies (not signatureCode.oclIsUndefined() and signatureCode.oclIsKindOf(datatypes::CS) and 
	 * let value : datatypes::CS = signatureCode.oclAsType(datatypes::CS) in (
	 * value.code = 's'))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.authenticator->exists(not oclIsUndefined()) then self.authenticator->forAll((signatureCode.oclIsUndefined() or signatureCode.isNullFlavorUndefined()) implies (not signatureCode.oclIsUndefined() and signatureCode.oclIsKindOf(datatypes::CS) and \r\nlet value : datatypes::CS = signatureCode.oclAsType(datatypes::CS) in (\r\nvalue.code = \'s\'))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthenticatorSignatureCode(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.authenticator->exists(not oclIsUndefined()) then self.authenticator->forAll(assignedEntity->one(assignedEntity : cda::AssignedEntity | not assignedEntity.oclIsUndefined() and assignedEntity.oclIsKindOf(cda::AssignedEntity))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.authenticator->exists(not oclIsUndefined()) then self.authenticator->forAll(assignedEntity->one(assignedEntity : cda::AssignedEntity | not assignedEntity.oclIsUndefined() and assignedEntity.oclIsKindOf(cda::AssignedEntity))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsAuthenticatorAssignedEntity(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.providerOrganization->exists(not oclIsUndefined()) then self.recordTarget.patientRole.providerOrganization->forAll(id->exists( root='2.16.840.1.113883.4.6' )) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.providerOrganization->exists(not oclIsUndefined()) then self.recordTarget.patientRole.providerOrganization->forAll(id->exists( root=\'2.16.840.1.113883.4.6\' )) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRoleProviderOrganizationHasNationalProviderIdentifier(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.guardian->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.guardian->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.guardian->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.guardian->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianAddr(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.guardian->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.guardian->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (code.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = code.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.5.111' and not value.code.oclIsUndefined()))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.guardian->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.guardian->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (code.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = code.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.5.111\' and not value.code.oclIsUndefined()))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianCode(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.guardian->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.guardian->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.guardian->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.guardian->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianTelecom(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.guardian->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.guardian->forAll(guardianPerson->one(guardianPerson : cda::Person | not guardianPerson.oclIsUndefined() and guardianPerson.oclIsKindOf(cda::Person))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.guardian->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.guardian->forAll(guardianPerson->one(guardianPerson : cda::Person | not guardianPerson.oclIsUndefined() and guardianPerson.oclIsKindOf(cda::Person))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientGuardianGuardianPerson(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll(birthTime.value.size() >= 4) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll(birthTime.value.size() >= 4) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientBirthTimePreciseToYear(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll(birthTime.value.size() >= 6) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll(birthTime.value.size() >= 6) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientBirthTimePreciseToDay(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.birthplace->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.birthplace.place->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.birthplace.place->forAll((addr.oclIsUndefined() or addr.isNullFlavorUndefined()) implies (not addr.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.birthplace->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.birthplace.place->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.birthplace.place->forAll((addr.oclIsUndefined() or addr.isNullFlavorUndefined()) implies (not addr.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlaceAddr(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.birthplace->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.birthplace->forAll(place->one(place : cda::Place | not place.oclIsUndefined() and place.oclIsKindOf(cda::Place))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.birthplace->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.birthplace->forAll(place->one(place : cda::Place | not place.oclIsUndefined() and place.oclIsKindOf(cda::Place))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplacePlace(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.languageCommunication->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.languageCommunication->forAll((preferenceInd.oclIsUndefined() or preferenceInd.isNullFlavorUndefined()) implies (not preferenceInd.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.languageCommunication->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.languageCommunication->forAll((preferenceInd.oclIsUndefined() or preferenceInd.isNullFlavorUndefined()) implies (not preferenceInd.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationPreferenceInd(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.languageCommunication->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.languageCommunication->forAll((proficiencyLevelCode.oclIsUndefined() or proficiencyLevelCode.isNullFlavorUndefined()) implies (proficiencyLevelCode.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = proficiencyLevelCode.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.6.1' and not value.code.oclIsUndefined()))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.languageCommunication->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.languageCommunication->forAll((proficiencyLevelCode.oclIsUndefined() or proficiencyLevelCode.isNullFlavorUndefined()) implies (proficiencyLevelCode.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = proficiencyLevelCode.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.6.1\' and not value.code.oclIsUndefined()))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationProficiencyLevelCode(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.languageCommunication->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.languageCommunication->forAll((modeCode.oclIsUndefined() or modeCode.isNullFlavorUndefined()) implies (modeCode.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = modeCode.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.5.60' and (value.code = 'ESGN' or value.code = 'ESP' or value.code = 'EWR' or value.code = 'RSGN' or value.code = 'RSP' or value.code = 'RWR')))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.languageCommunication->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.languageCommunication->forAll((modeCode.oclIsUndefined() or modeCode.isNullFlavorUndefined()) implies (modeCode.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = modeCode.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.5.60\' and (value.code = \'ESGN\' or value.code = \'ESP\' or value.code = \'EWR\' or value.code = \'RSGN\' or value.code = \'RSP\' or value.code = \'RWR\')))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationModeCode(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((birthTime.oclIsUndefined() or birthTime.isNullFlavorUndefined()) implies (not birthTime.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((birthTime.oclIsUndefined() or birthTime.isNullFlavorUndefined()) implies (not birthTime.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientBirthTime(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((ethnicGroupCode.oclIsUndefined() or ethnicGroupCode.isNullFlavorUndefined()) implies (not ethnicGroupCode.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((ethnicGroupCode.oclIsUndefined() or ethnicGroupCode.isNullFlavorUndefined()) implies (not ethnicGroupCode.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientEthnicGroupCode(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((maritalStatusCode.oclIsUndefined() or maritalStatusCode.isNullFlavorUndefined()) implies (not maritalStatusCode.oclIsUndefined() and maritalStatusCode.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = maritalStatusCode.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.5.2' and (value.code = 'A' or value.code = 'D' or value.code = 'T' or value.code = 'I' or value.code = 'L' or value.code = 'M' or value.code = 'S' or value.code = 'P' or value.code = 'W')))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((maritalStatusCode.oclIsUndefined() or maritalStatusCode.isNullFlavorUndefined()) implies (not maritalStatusCode.oclIsUndefined() and maritalStatusCode.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = maritalStatusCode.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.5.2\' and (value.code = \'A\' or value.code = \'D\' or value.code = \'T\' or value.code = \'I\' or value.code = \'L\' or value.code = \'M\' or value.code = \'S\' or value.code = \'P\' or value.code = \'W\')))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientMaritalStatusCode(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((name->isEmpty() or name->exists(element | element.isNullFlavorUndefined())) implies (not name->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((name->isEmpty() or name->exists(element | element.isNullFlavorUndefined())) implies (not name->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientName(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((raceCode.oclIsUndefined() or raceCode.isNullFlavorUndefined()) implies (not raceCode.oclIsUndefined() and raceCode.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = raceCode.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.6.238' and not value.code.oclIsUndefined()))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((raceCode.oclIsUndefined() or raceCode.isNullFlavorUndefined()) implies (not raceCode.oclIsUndefined() and raceCode.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = raceCode.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.6.238\' and not value.code.oclIsUndefined()))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientRaceCode(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((religiousAffiliationCode.oclIsUndefined() or religiousAffiliationCode.isNullFlavorUndefined()) implies (not religiousAffiliationCode.oclIsUndefined() and religiousAffiliationCode.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = religiousAffiliationCode.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.5.1076' and not value.code.oclIsUndefined()))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll((religiousAffiliationCode.oclIsUndefined() or religiousAffiliationCode.isNullFlavorUndefined()) implies (not religiousAffiliationCode.oclIsUndefined() and religiousAffiliationCode.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = religiousAffiliationCode.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.5.1076\' and not value.code.oclIsUndefined()))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientReligiousAffiliationCode(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll(guardian->exists(guardian : cda::Guardian | not guardian.oclIsUndefined() and guardian.oclIsKindOf(cda::Guardian))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll(guardian->exists(guardian : cda::Guardian | not guardian.oclIsUndefined() and guardian.oclIsKindOf(cda::Guardian))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientGuardian(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll(birthplace->one(birthplace : cda::Birthplace | not birthplace.oclIsUndefined() and birthplace.oclIsKindOf(cda::Birthplace))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll(birthplace->one(birthplace : cda::Birthplace | not birthplace.oclIsUndefined() and birthplace.oclIsKindOf(cda::Birthplace))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientBirthplace(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll(languageCommunication->one(languageCommunication : cda::LanguageCommunication | not languageCommunication.oclIsUndefined() and languageCommunication.oclIsKindOf(cda::LanguageCommunication))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient->forAll(languageCommunication->one(languageCommunication : cda::LanguageCommunication | not languageCommunication.oclIsUndefined() and languageCommunication.oclIsKindOf(cda::LanguageCommunication))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunication(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.providerOrganization->exists(not oclIsUndefined()) then self.recordTarget.patientRole.providerOrganization->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.providerOrganization->exists(not oclIsUndefined()) then self.recordTarget.patientRole.providerOrganization->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRoleProviderOrganizationAddr(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.providerOrganization->exists(not oclIsUndefined()) then self.recordTarget.patientRole.providerOrganization->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.providerOrganization->exists(not oclIsUndefined()) then self.recordTarget.patientRole.providerOrganization->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRoleProviderOrganizationId(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.providerOrganization->exists(not oclIsUndefined()) then self.recordTarget.patientRole.providerOrganization->forAll((name->isEmpty() or name->exists(element | element.isNullFlavorUndefined())) implies (not name->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.providerOrganization->exists(not oclIsUndefined()) then self.recordTarget.patientRole.providerOrganization->forAll((name->isEmpty() or name->exists(element | element.isNullFlavorUndefined())) implies (not name->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRoleProviderOrganizationName(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.providerOrganization->exists(not oclIsUndefined()) then self.recordTarget.patientRole.providerOrganization->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.providerOrganization->exists(not oclIsUndefined()) then self.recordTarget.patientRole.providerOrganization->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRoleProviderOrganizationTelecom(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.languageCommunication->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.languageCommunication->forAll((languageCode.oclIsUndefined() or languageCode.isNullFlavorUndefined()) implies (not languageCode.oclIsUndefined() and languageCode.oclIsKindOf(datatypes::CS) and 
	 * let value : datatypes::CS = languageCode.oclAsType(datatypes::CS) in (
	 * not value.code.oclIsUndefined()))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient->exists(not oclIsUndefined()) and self.recordTarget.patientRole.patient.languageCommunication->exists(not oclIsUndefined()) then self.recordTarget.patientRole.patient.languageCommunication->forAll((languageCode.oclIsUndefined() or languageCode.isNullFlavorUndefined()) implies (not languageCode.oclIsUndefined() and languageCode.oclIsKindOf(datatypes::CS) and \r\nlet value : datatypes::CS = languageCode.oclAsType(datatypes::CS) in (\r\nnot value.code.oclIsUndefined()))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatientLanguageCommunicationLanguageCode(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) then self.recordTarget.patientRole->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) then self.recordTarget.patientRole->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRoleAddr(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) then self.recordTarget.patientRole->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) then self.recordTarget.patientRole->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRoleId(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) then self.recordTarget.patientRole->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) then self.recordTarget.patientRole->forAll((telecom->isEmpty() or telecom->exists(element | element.isNullFlavorUndefined())) implies (not telecom->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRoleTelecom(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) then self.recordTarget.patientRole->forAll(patient->one(patient : cda::Patient | not patient.oclIsUndefined() and patient.oclIsKindOf(cda::Patient))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) and self.recordTarget.patientRole->exists(not oclIsUndefined()) then self.recordTarget.patientRole->forAll(patient->one(patient : cda::Patient | not patient.oclIsUndefined() and patient.oclIsKindOf(cda::Patient))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRolePatient(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.recordTarget->exists(not oclIsUndefined()) then self.recordTarget->forAll(patientRole->one(patientRole : cda::PatientRole | not patientRole.oclIsUndefined() and patientRole.oclIsKindOf(cda::PatientRole))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.recordTarget->exists(not oclIsUndefined()) then self.recordTarget->forAll(patientRole->one(patientRole : cda::PatientRole | not patientRole.oclIsUndefined() and patientRole.oclIsKindOf(cda::PatientRole))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsRecordTargetPatientRole(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.componentOf->exists(not oclIsUndefined()) and self.componentOf.encompassingEncounter->exists(not oclIsUndefined()) then self.componentOf.encompassingEncounter->forAll((effectiveTime.oclIsUndefined() or effectiveTime.isNullFlavorUndefined()) implies (not effectiveTime.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.componentOf->exists(not oclIsUndefined()) and self.componentOf.encompassingEncounter->exists(not oclIsUndefined()) then self.componentOf.encompassingEncounter->forAll((effectiveTime.oclIsUndefined() or effectiveTime.isNullFlavorUndefined()) implies (not effectiveTime.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsComponentOfEncompassingEncounterEffectiveTime(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.componentOf->exists(not oclIsUndefined()) and self.componentOf.encompassingEncounter->exists(not oclIsUndefined()) then self.componentOf.encompassingEncounter->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.componentOf->exists(not oclIsUndefined()) and self.componentOf.encompassingEncounter->exists(not oclIsUndefined()) then self.componentOf.encompassingEncounter->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsComponentOfEncompassingEncounterId(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.componentOf->exists(not oclIsUndefined()) then self.componentOf->forAll(encompassingEncounter->one(encompassingEncounter : cda::EncompassingEncounter | not encompassingEncounter.oclIsUndefined() and encompassingEncounter.oclIsKindOf(cda::EncompassingEncounter))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.componentOf->exists(not oclIsUndefined()) then self.componentOf->forAll(encompassingEncounter->one(encompassingEncounter : cda::EncompassingEncounter | not encompassingEncounter.oclIsUndefined() and encompassingEncounter.oclIsKindOf(cda::EncompassingEncounter))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsComponentOfEncompassingEncounter(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informant->exists(not oclIsUndefined()) and self.informant.assignedEntity->exists(not oclIsUndefined()) then self.informant.assignedEntity->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informant->exists(not oclIsUndefined()) and self.informant.assignedEntity->exists(not oclIsUndefined()) then self.informant.assignedEntity->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformantAssignedEntityAddr(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informant->exists(not oclIsUndefined()) and self.informant.assignedEntity->exists(not oclIsUndefined()) then self.informant.assignedEntity->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (code.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = code.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.6.101'))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informant->exists(not oclIsUndefined()) and self.informant.assignedEntity->exists(not oclIsUndefined()) then self.informant.assignedEntity->forAll((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (code.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = code.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.6.101\'))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformantAssignedEntityCode(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informant->exists(not oclIsUndefined()) and self.informant.assignedEntity->exists(not oclIsUndefined()) then self.informant.assignedEntity->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informant->exists(not oclIsUndefined()) and self.informant.assignedEntity->exists(not oclIsUndefined()) then self.informant.assignedEntity->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformantAssignedEntityId(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informant->exists(not oclIsUndefined()) and self.informant.assignedEntity->exists(not oclIsUndefined()) then self.informant.assignedEntity->forAll(assignedPerson->one(assignedPerson : cda::Person | not assignedPerson.oclIsUndefined() and assignedPerson.oclIsKindOf(cda::Person))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informant->exists(not oclIsUndefined()) and self.informant.assignedEntity->exists(not oclIsUndefined()) then self.informant.assignedEntity->forAll(assignedPerson->one(assignedPerson : cda::Person | not assignedPerson.oclIsUndefined() and assignedPerson.oclIsKindOf(cda::Person))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformantAssignedEntityPerson(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informant->exists(not oclIsUndefined()) then self.informant->forAll(assignedEntity.oclIsUndefined() xor relatedEntity.oclIsUndefined()) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informant->exists(not oclIsUndefined()) then self.informant->forAll(assignedEntity.oclIsUndefined() xor relatedEntity.oclIsUndefined()) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformantHasAssignedEntityOrRelatedEntity(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.participant->exists(not oclIsUndefined()) then self.participant->forAll(associatedEntity.associatedPerson.oclIsUndefined() xor associatedEntity.scopingOrganization.oclIsUndefined()) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.participant->exists(not oclIsUndefined()) then self.participant->forAll(associatedEntity.associatedPerson.oclIsUndefined() xor associatedEntity.scopingOrganization.oclIsUndefined()) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsParticipantSupportAssociatedEntityHasAssociatedPersonOrScopingOrganization(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informant->exists(not oclIsUndefined()) and self.informant.relatedEntity->exists(not oclIsUndefined()) then self.informant.relatedEntity->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informant->exists(not oclIsUndefined()) and self.informant.relatedEntity->exists(not oclIsUndefined()) then self.informant.relatedEntity->forAll((addr->isEmpty() or addr->exists(element | element.isNullFlavorUndefined())) implies (not addr->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformantRelatedEntityAddr(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informant->exists(not oclIsUndefined()) and self.informant.relatedEntity->exists(not oclIsUndefined()) then self.informant.relatedEntity->forAll(relatedPerson->one(relatedPerson : cda::Person | not relatedPerson.oclIsUndefined() and relatedPerson.oclIsKindOf(cda::Person))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informant->exists(not oclIsUndefined()) and self.informant.relatedEntity->exists(not oclIsUndefined()) then self.informant.relatedEntity->forAll(relatedPerson->one(relatedPerson : cda::Person | not relatedPerson.oclIsUndefined() and relatedPerson.oclIsKindOf(cda::Person))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformantRelatedEntityPerson(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.informant->exists(not oclIsUndefined()) and self.informant.assignedEntity->exists(not oclIsUndefined()) then self.informant.assignedEntity->forAll(id->exists( root='2.16.840.1.113883.4.6' )) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.informant->exists(not oclIsUndefined()) and self.informant.assignedEntity->exists(not oclIsUndefined()) then self.informant.assignedEntity->forAll(id->exists( root=\'2.16.840.1.113883.4.6\' )) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInformantAssignedEntityHasNationalProviderIdentifier(
			DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.participant->exists(not oclIsUndefined()) then self.participant->forAll((time.oclIsUndefined() or time.isNullFlavorUndefined()) implies (not time.oclIsUndefined())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.participant->exists(not oclIsUndefined()) then self.participant->forAll((time.oclIsUndefined() or time.isNullFlavorUndefined()) implies (not time.oclIsUndefined())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsParticipantSupportTime(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.inFulfillmentOf->exists(not oclIsUndefined()) and self.inFulfillmentOf.order->exists(not oclIsUndefined()) then self.inFulfillmentOf.order->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.inFulfillmentOf->exists(not oclIsUndefined()) and self.inFulfillmentOf.order->exists(not oclIsUndefined()) then self.inFulfillmentOf.order->forAll((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty())) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInFulfillmentOfOrderId(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * if self.inFulfillmentOf->exists(not oclIsUndefined()) then self.inFulfillmentOf->forAll(order->one(order : cda::Order | not order.oclIsUndefined() and order.oclIsKindOf(cda::Order))) else true endif
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='if self.inFulfillmentOf->exists(not oclIsUndefined()) then self.inFulfillmentOf->forAll(order->one(order : cda::Order | not order.oclIsUndefined() and order.oclIsKindOf(cda::Order))) else true endif'"
	 * @generated
	 */
	boolean validateGeneralHeaderConstraintsInFulfillmentOfOrder(DiagnosticChain diagnostics,
			Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public GeneralHeaderConstraints init();
} // GeneralHeaderConstraints
