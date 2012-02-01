/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package org.openhealthtools.mdht.uml.cda.consol;

import java.util.Map;

import org.eclipse.emf.common.util.DiagnosticChain;

import org.openhealthtools.mdht.uml.cda.LanguageCommunication;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Patient Language Communication</b></em>'.
 * <!-- end-user-doc -->
 *
 *
 * @see org.openhealthtools.mdht.uml.cda.consol.ConsolPackage#getPatient_LanguageCommunication()
 * @model annotation="http://www.openhealthtools.org/mdht/uml/cda/annotation proficiencyLevelCode.codeSystem='2.16.840.1.113883.6.1' constraints.validation.error='LanguageCommunicationLanguageCode LanguageCommunicationProficiencyLevelCode LanguageCommunicationModeCode' modeCode.codeSystem='2.16.840.1.113883.5.60' proficiencyLevelCode.codeSystemName='LOINC' constraints.validation.info='LanguageCommunicationPreferenceInd' modeCode.codeSystemName='LanguageAbilityMode'"
 * @generated
 */
public interface Patient_LanguageCommunication extends LanguageCommunication {
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
	boolean validateLanguageCommunicationLanguageCode(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.preferenceInd.oclIsUndefined() or self.preferenceInd.isNullFlavorUndefined()) implies (not self.preferenceInd.oclIsUndefined())
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.preferenceInd.oclIsUndefined() or self.preferenceInd.isNullFlavorUndefined()) implies (not self.preferenceInd.oclIsUndefined())'"
	 * @generated
	 */
	boolean validateLanguageCommunicationPreferenceInd(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.proficiencyLevelCode.oclIsUndefined() or self.proficiencyLevelCode.isNullFlavorUndefined()) implies (self.proficiencyLevelCode.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = self.proficiencyLevelCode.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.6.1' and not value.code.oclIsUndefined()))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.proficiencyLevelCode.oclIsUndefined() or self.proficiencyLevelCode.isNullFlavorUndefined()) implies (self.proficiencyLevelCode.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = self.proficiencyLevelCode.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.6.1\' and not value.code.oclIsUndefined()))'"
	 * @generated
	 */
	boolean validateLanguageCommunicationProficiencyLevelCode(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * (self.modeCode.oclIsUndefined() or self.modeCode.isNullFlavorUndefined()) implies (self.modeCode.oclIsKindOf(datatypes::CE) and 
	 * let value : datatypes::CE = self.modeCode.oclAsType(datatypes::CE) in (
	 * value.codeSystem = '2.16.840.1.113883.5.60' and (value.code = 'ESGN' or value.code = 'ESP' or value.code = 'EWR' or value.code = 'RSGN' or value.code = 'RSP' or value.code = 'RWR')))
	 * @param diagnostics The chain of diagnostics to which problems are to be appended.
	 * @param context The cache of context-specific information.
	 * <!-- end-model-doc -->
	 * @model annotation="http://www.eclipse.org/uml2/1.1.0/GenModel body='(self.modeCode.oclIsUndefined() or self.modeCode.isNullFlavorUndefined()) implies (self.modeCode.oclIsKindOf(datatypes::CE) and \r\nlet value : datatypes::CE = self.modeCode.oclAsType(datatypes::CE) in (\r\nvalue.codeSystem = \'2.16.840.1.113883.5.60\' and (value.code = \'ESGN\' or value.code = \'ESP\' or value.code = \'EWR\' or value.code = \'RSGN\' or value.code = \'RSP\' or value.code = \'RWR\')))'"
	 * @generated
	 */
	boolean validateLanguageCommunicationModeCode(DiagnosticChain diagnostics, Map<Object, Object> context);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Patient_LanguageCommunication init();
} // Patient_LanguageCommunication
