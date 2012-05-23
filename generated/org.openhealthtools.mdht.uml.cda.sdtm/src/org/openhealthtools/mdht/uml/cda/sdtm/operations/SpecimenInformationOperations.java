/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package org.openhealthtools.mdht.uml.cda.sdtm.operations;

import java.util.Map;

import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;

import org.eclipse.emf.ecore.EClassifier;

import org.eclipse.ocl.ParserException;

import org.eclipse.ocl.ecore.Constraint;
import org.eclipse.ocl.ecore.OCL;

import org.eclipse.ocl.expressions.OCLExpression;

import org.openhealthtools.mdht.uml.cda.operations.ClinicalStatementOperations;

import org.openhealthtools.mdht.uml.cda.sdtm.EventStudyDay;
import org.openhealthtools.mdht.uml.cda.sdtm.SdtmPackage;
import org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation;
import org.openhealthtools.mdht.uml.cda.sdtm.TimingReference;

import org.openhealthtools.mdht.uml.cda.sdtm.util.SdtmValidator;

/**
 * <!-- begin-user-doc -->
 * A static utility class that provides operations related to '<em><b>Specimen Information</b></em>' model objects.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following operations are supported:
 * <ul>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationTemplateId(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Template Id</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationClassCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Class Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationEffectiveTime(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Effective Time</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationMoodCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Mood Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationCodeP(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Code P</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationTargetSiteCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Target Site Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationParticipatingSpecimen(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Participating Specimen</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationConditionAssociation(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Condition Association</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationEventStudyDay(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Event Study Day</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationTimingReference(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Timing Reference</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityClassCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimenspecimen Entity Class Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimenspecimen Entity Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityDeterminerCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimenspecimen Entity Determiner Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationparticipatingSpecimenroleOfSpecimenClassCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimen Class Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationparticipatingSpecimenroleOfSpecimenId(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimen Id</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationparticipatingSpecimenTypeCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimen Type Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationparticipatingSpecimenRoleOfSpecimen(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimen Role Of Specimen</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationconditionAssociationspecimenConditionCodeP(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code P</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationconditionAssociationspecimenConditionCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationconditionAssociationspecimenConditionMoodCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Mood Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationconditionAssociationspecimenConditionValue(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Value</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationconditionAssociationTypeCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Association Type Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationconditionAssociationSpecimenCondition(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Association Specimen Condition</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationconditionAssociationspecimenConditionCodePSpecimenInformationconditionAssociationspecimenConditionCodeP1(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code PSpecimen Informationcondition Associationspecimen Condition Code P1</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationconditionAssociationspecimenConditionCodeSpecimenInformationconditionAssociationspecimenConditionCode1(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code Specimen Informationcondition Associationspecimen Condition Code1</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationconditionAssociationspecimenConditionMoodCodeSpecimenInformationconditionAssociationspecimenConditionMoodCode1(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Mood Code Specimen Informationcondition Associationspecimen Condition Mood Code1</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#validateSpecimenInformationconditionAssociationspecimenConditionValueSpecimenInformationconditionAssociationspecimenConditionValue1(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Value Specimen Informationcondition Associationspecimen Condition Value1</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#getEventStudyDay() <em>Get Event Study Day</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.sdtm.SpecimenInformation#getTimingReference() <em>Get Timing Reference</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class SpecimenInformationOperations extends ClinicalStatementOperations
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected SpecimenInformationOperations() {
    super();
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationTemplateId(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Template Id</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationTemplateId(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.23.67')";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationTemplateId(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Template Id</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationTemplateId(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.23.67')
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationTemplateId(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_TEMPLATE_ID,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationTemplateId", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Class Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "isDefined('classCode')";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Class Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * isDefined('classCode')
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationClassCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_CLASS_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationClassCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationEffectiveTime(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Effective Time</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationEffectiveTime(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.effectiveTime.oclIsUndefined() or self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationEffectiveTime(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Effective Time</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationEffectiveTime(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.effectiveTime.oclIsUndefined() or self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationEffectiveTime(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_EFFECTIVE_TIME,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationEffectiveTime", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationMoodCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Mood Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationMoodCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.moodCode=vocab::x_DocumentProcedureMood::EVN";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationMoodCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Mood Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationMoodCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.moodCode=vocab::x_DocumentProcedureMood::EVN
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationMoodCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_MOOD_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationMoodCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and "+
"let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in "+
"value.codeSystem = '2.16.840.1.113883.3.26.1.1')";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CD) and 
   * let value : datatypes::CD = self.code.oclAsType(datatypes::CD) in 
   * value.codeSystem = '2.16.840.1.113883.3.26.1.1')
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationCodeP(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Code P</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationCodeP(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationCodeP(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Code P</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationCodeP(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationCodeP(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_CODE_P,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationCodeP", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationTargetSiteCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Target Site Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationTargetSiteCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_TARGET_SITE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.targetSiteCode->isEmpty() or self.targetSiteCode->exists(element | element.isNullFlavorUndefined())) implies (not self.targetSiteCode->isEmpty())";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationTargetSiteCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Target Site Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationTargetSiteCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_TARGET_SITE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.targetSiteCode->isEmpty() or self.targetSiteCode->exists(element | element.isNullFlavorUndefined())) implies (not self.targetSiteCode->isEmpty())
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationTargetSiteCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_TARGET_SITE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_TARGET_SITE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_TARGET_SITE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_TARGET_SITE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_TARGET_SITE_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationTargetSiteCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationParticipatingSpecimen(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Participating Specimen</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationParticipatingSpecimen(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_PARTICIPATING_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.specimen->one(specimen : cda::Specimen | not specimen.oclIsUndefined() and specimen.oclIsKindOf(cda::Specimen))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationParticipatingSpecimen(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Participating Specimen</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationParticipatingSpecimen(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_PARTICIPATING_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.specimen->one(specimen : cda::Specimen | not specimen.oclIsUndefined() and specimen.oclIsKindOf(cda::Specimen))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationParticipatingSpecimen(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_PARTICIPATING_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_PARTICIPATING_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_PARTICIPATING_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_PARTICIPATING_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_PARTICIPATING_SPECIMEN,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationParticipatingSpecimen", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationConditionAssociation(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Condition Association</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationConditionAssociation(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_CONDITION_ASSOCIATION__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(cda::EntryRelationship))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationConditionAssociation(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Condition Association</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationConditionAssociation(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_CONDITION_ASSOCIATION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.oclIsUndefined() and entryRelationship.oclIsKindOf(cda::EntryRelationship))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationConditionAssociation(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_CONDITION_ASSOCIATION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_CONDITION_ASSOCIATION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_CONDITION_ASSOCIATION__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_CONDITION_ASSOCIATION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_CONDITION_ASSOCIATION,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationConditionAssociation", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationEventStudyDay(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Event Study Day</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationEventStudyDay(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_EVENT_STUDY_DAY__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.observation.oclIsUndefined() and entryRelationship.observation.oclIsKindOf(sdtm::Event Study Day) and entryRelationship.typeCode = vocab::x_ActRelationshipEntryRelationship::REFR)";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationEventStudyDay(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Event Study Day</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationEventStudyDay(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_EVENT_STUDY_DAY__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.observation.oclIsUndefined() and entryRelationship.observation.oclIsKindOf(sdtm::Event Study Day) and entryRelationship.typeCode = vocab::x_ActRelationshipEntryRelationship::REFR)
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationEventStudyDay(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_EVENT_STUDY_DAY__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_EVENT_STUDY_DAY__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_EVENT_STUDY_DAY__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_EVENT_STUDY_DAY__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_EVENT_STUDY_DAY,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationEventStudyDay", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationTimingReference(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Timing Reference</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationTimingReference(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATION_TIMING_REFERENCE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.act.oclIsUndefined() and entryRelationship.act.oclIsKindOf(sdtm::Timing Reference) and entryRelationship.typeCode = vocab::x_ActRelationshipEntryRelationship::REFR)";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationTimingReference(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Information Timing Reference</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationTimingReference(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATION_TIMING_REFERENCE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->one(entryRelationship : cda::EntryRelationship | not entryRelationship.act.oclIsUndefined() and entryRelationship.act.oclIsKindOf(sdtm::Timing Reference) and entryRelationship.typeCode = vocab::x_ActRelationshipEntryRelationship::REFR)
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationTimingReference(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATION_TIMING_REFERENCE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATION_TIMING_REFERENCE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATION_TIMING_REFERENCE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATION_TIMING_REFERENCE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATION_TIMING_REFERENCE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationTimingReference", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimenspecimen Entity Class Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.specimen->excluding(null).specimenRole->excluding(null).->reject(isDefined('classCode'))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimenspecimen Entity Class Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.specimen->excluding(null).specimenRole->excluding(null).->reject(isDefined('classCode'))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityClassCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CLASS_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityClassCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimenspecimen Entity Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.specimen->excluding(null).specimenRole->excluding(null).->reject((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined()))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimenspecimen Entity Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.specimen->excluding(null).specimenRole->excluding(null).->reject((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined()))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityDeterminerCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimenspecimen Entity Determiner Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityDeterminerCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_DETERMINER_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.specimen->excluding(null).specimenRole->excluding(null).->reject(determinerCode=vocab::EntityDeterminer::INSTANCE)";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityDeterminerCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimenspecimen Entity Determiner Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityDeterminerCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_DETERMINER_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.specimen->excluding(null).specimenRole->excluding(null).->reject(determinerCode=vocab::EntityDeterminer::INSTANCE)
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityDeterminerCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_DETERMINER_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_DETERMINER_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_DETERMINER_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_DETERMINER_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMENSPECIMEN_ENTITY_DETERMINER_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationparticipatingSpecimenroleOfSpecimenspecimenEntityDeterminerCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimen Class Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.specimen->excluding(null).specimenRole->excluding(null)->reject(classCode=vocab::RoleClassSpecimen::SPEC)";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimen Class Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenClassCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.specimen->excluding(null).specimenRole->excluding(null)->reject(classCode=vocab::RoleClassSpecimen::SPEC)
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationparticipatingSpecimenroleOfSpecimenClassCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_CLASS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_CLASS_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationparticipatingSpecimenroleOfSpecimenClassCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenId(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimen Id</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenId(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.specimen->excluding(null).specimenRole->excluding(null)->reject((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty()))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenId(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimenrole Of Specimen Id</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenroleOfSpecimenId(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.specimen->excluding(null).specimenRole->excluding(null)->reject((id->isEmpty() or id->exists(element | element.isNullFlavorUndefined())) implies (not id->isEmpty()))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationparticipatingSpecimenroleOfSpecimenId(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONPARTICIPATING_SPECIMENROLE_OF_SPECIMEN_ID,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationparticipatingSpecimenroleOfSpecimenId", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationparticipatingSpecimenTypeCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimen Type Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenTypeCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.specimen->excluding(null)->reject(typeCode=vocab::ParticipationType::SPC)";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationparticipatingSpecimenTypeCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimen Type Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenTypeCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.specimen->excluding(null)->reject(typeCode=vocab::ParticipationType::SPC)
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationparticipatingSpecimenTypeCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_TYPE_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationparticipatingSpecimenTypeCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationparticipatingSpecimenRoleOfSpecimen(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimen Role Of Specimen</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenRoleOfSpecimen(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_ROLE_OF_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.specimen->excluding(null)->reject(specimenRole->one(specimenRole : cda::SpecimenRole | not specimenRole.oclIsUndefined() and specimenRole.oclIsKindOf(cda::SpecimenRole)))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationparticipatingSpecimenRoleOfSpecimen(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationparticipating Specimen Role Of Specimen</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationparticipatingSpecimenRoleOfSpecimen(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_ROLE_OF_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.specimen->excluding(null)->reject(specimenRole->one(specimenRole : cda::SpecimenRole | not specimenRole.oclIsUndefined() and specimenRole.oclIsKindOf(cda::SpecimenRole)))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationparticipatingSpecimenRoleOfSpecimen(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_ROLE_OF_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_ROLE_OF_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_ROLE_OF_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_ROLE_OF_SPECIMEN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONPARTICIPATING_SPECIMEN_ROLE_OF_SPECIMEN,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationparticipatingSpecimenRoleOfSpecimen", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionCodeP(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code P</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionCodeP(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->excluding(null).observation->excluding(null)->reject((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined()))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionCodeP(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code P</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionCodeP(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->excluding(null).observation->excluding(null)->reject((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined()))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationconditionAssociationspecimenConditionCodeP(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationconditionAssociationspecimenConditionCodeP", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->excluding(null).observation->excluding(null)->reject((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined() and code.oclIsKindOf(datatypes::CD) and "+
"let value : datatypes::CD = code.oclAsType(datatypes::CD) in "+
"value.codeSystem = '2.16.840.1.113883.3.26.1.1'))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->excluding(null).observation->excluding(null)->reject((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined() and code.oclIsKindOf(datatypes::CD) and 
   * let value : datatypes::CD = code.oclAsType(datatypes::CD) in 
   * value.codeSystem = '2.16.840.1.113883.3.26.1.1'))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationconditionAssociationspecimenConditionCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationconditionAssociationspecimenConditionCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionMoodCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Mood Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionMoodCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->excluding(null).observation->excluding(null)->reject(moodCode=vocab::x_ActMoodDocumentObservation::EVN)";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionMoodCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Mood Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionMoodCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->excluding(null).observation->excluding(null)->reject(moodCode=vocab::x_ActMoodDocumentObservation::EVN)
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationconditionAssociationspecimenConditionMoodCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationconditionAssociationspecimenConditionMoodCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionValue(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Value</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionValue(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->excluding(null).observation->excluding(null)->reject((value->isEmpty() or value->exists(element | element.isNullFlavorUndefined())) implies (value->size() = 1 and value->forAll(element | element.oclIsTypeOf(datatypes::CE))))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionValue(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Value</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionValue(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->excluding(null).observation->excluding(null)->reject((value->isEmpty() or value->exists(element | element.isNullFlavorUndefined())) implies (value->size() = 1 and value->forAll(element | element.oclIsTypeOf(datatypes::CE))))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationconditionAssociationspecimenConditionValue(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationconditionAssociationspecimenConditionValue", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationconditionAssociationTypeCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Association Type Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationTypeCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->excluding(null)->reject(typeCode=vocab::x_ActRelationshipEntryRelationship::COMP)";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationconditionAssociationTypeCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Association Type Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationTypeCode(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->excluding(null)->reject(typeCode=vocab::x_ActRelationshipEntryRelationship::COMP)
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationconditionAssociationTypeCode(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_TYPE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_TYPE_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationconditionAssociationTypeCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationconditionAssociationSpecimenCondition(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Association Specimen Condition</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationSpecimenCondition(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_SPECIMEN_CONDITION__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->excluding(null)->reject(observation->one(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(cda::Observation)))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationconditionAssociationSpecimenCondition(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Association Specimen Condition</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationSpecimenCondition(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_SPECIMEN_CONDITION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->excluding(null)->reject(observation->one(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(cda::Observation)))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationconditionAssociationSpecimenCondition(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_SPECIMEN_CONDITION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_SPECIMEN_CONDITION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_SPECIMEN_CONDITION__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_SPECIMEN_CONDITION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONCONDITION_ASSOCIATION_SPECIMEN_CONDITION,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationconditionAssociationSpecimenCondition", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionCodePSpecimenInformationconditionAssociationspecimenConditionCodeP1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code PSpecimen Informationcondition Associationspecimen Condition Code P1</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionCodePSpecimenInformationconditionAssociationspecimenConditionCodeP1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_PSPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P1__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->excluding(null)->reject(observation->excluding(null)->reject((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined())))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionCodePSpecimenInformationconditionAssociationspecimenConditionCodeP1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code PSpecimen Informationcondition Associationspecimen Condition Code P1</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionCodePSpecimenInformationconditionAssociationspecimenConditionCodeP1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_PSPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->excluding(null)->reject(observation->excluding(null)->reject((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined())))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationconditionAssociationspecimenConditionCodePSpecimenInformationconditionAssociationspecimenConditionCodeP1(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_PSPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_PSPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_PSPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P1__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_PSPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_PSPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_P1,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationconditionAssociationspecimenConditionCodePSpecimenInformationconditionAssociationspecimenConditionCodeP1", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionCodeSpecimenInformationconditionAssociationspecimenConditionCode1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code Specimen Informationcondition Associationspecimen Condition Code1</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionCodeSpecimenInformationconditionAssociationspecimenConditionCode1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->excluding(null)->reject(observation->excluding(null)->reject((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined() and code.oclIsKindOf(datatypes::CD) and "+
"let value : datatypes::CD = code.oclAsType(datatypes::CD) in "+
"value.codeSystem = '2.16.840.1.113883.3.26.1.1')))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionCodeSpecimenInformationconditionAssociationspecimenConditionCode1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Code Specimen Informationcondition Associationspecimen Condition Code1</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionCodeSpecimenInformationconditionAssociationspecimenConditionCode1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->excluding(null)->reject(observation->excluding(null)->reject((code.oclIsUndefined() or code.isNullFlavorUndefined()) implies (not code.oclIsUndefined() and code.oclIsKindOf(datatypes::CD) and 
   * let value : datatypes::CD = code.oclAsType(datatypes::CD) in 
   * value.codeSystem = '2.16.840.1.113883.3.26.1.1')))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationconditionAssociationspecimenConditionCodeSpecimenInformationconditionAssociationspecimenConditionCode1(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_CODE1,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationconditionAssociationspecimenConditionCodeSpecimenInformationconditionAssociationspecimenConditionCode1", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionMoodCodeSpecimenInformationconditionAssociationspecimenConditionMoodCode1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Mood Code Specimen Informationcondition Associationspecimen Condition Mood Code1</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionMoodCodeSpecimenInformationconditionAssociationspecimenConditionMoodCode1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->excluding(null)->reject(observation->excluding(null)->reject(moodCode=vocab::x_ActMoodDocumentObservation::EVN))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionMoodCodeSpecimenInformationconditionAssociationspecimenConditionMoodCode1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Mood Code Specimen Informationcondition Associationspecimen Condition Mood Code1</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionMoodCodeSpecimenInformationconditionAssociationspecimenConditionMoodCode1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->excluding(null)->reject(observation->excluding(null)->reject(moodCode=vocab::x_ActMoodDocumentObservation::EVN))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationconditionAssociationspecimenConditionMoodCodeSpecimenInformationconditionAssociationspecimenConditionMoodCode1(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_MOOD_CODE1,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationconditionAssociationspecimenConditionMoodCodeSpecimenInformationconditionAssociationspecimenConditionMoodCode1", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionValueSpecimenInformationconditionAssociationspecimenConditionValue1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Value Specimen Informationcondition Associationspecimen Condition Value1</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionValueSpecimenInformationconditionAssociationspecimenConditionValue1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE1__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entryRelationship->excluding(null)->reject(observation->excluding(null)->reject((value->isEmpty() or value->exists(element | element.isNullFlavorUndefined())) implies (value->size() = 1 and value->forAll(element | element.oclIsTypeOf(datatypes::CE)))))";

  /**
   * The cached OCL invariant for the '{@link #validateSpecimenInformationconditionAssociationspecimenConditionValueSpecimenInformationconditionAssociationspecimenConditionValue1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Specimen Informationcondition Associationspecimen Condition Value Specimen Informationcondition Associationspecimen Condition Value1</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateSpecimenInformationconditionAssociationspecimenConditionValueSpecimenInformationconditionAssociationspecimenConditionValue1(SpecimenInformation, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entryRelationship->excluding(null)->reject(observation->excluding(null)->reject((value->isEmpty() or value->exists(element | element.isNullFlavorUndefined())) implies (value->size() = 1 and value->forAll(element | element.oclIsTypeOf(datatypes::CE)))))
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateSpecimenInformationconditionAssociationspecimenConditionValueSpecimenInformationconditionAssociationspecimenConditionValue1(SpecimenInformation specimenInformation, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    if (VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(SdtmPackage.Literals.SPECIMEN_INFORMATION);
      try
      {
        VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE1__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(specimenInformation))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             SdtmValidator.DIAGNOSTIC_SOURCE,
             SdtmValidator.SPECIMEN_INFORMATION__SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE_SPECIMEN_INFORMATIONCONDITION_ASSOCIATIONSPECIMEN_CONDITION_VALUE1,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "SpecimenInformationconditionAssociationspecimenConditionValueSpecimenInformationconditionAssociationspecimenConditionValue1", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(specimenInformation, context) }),
             new Object [] { specimenInformation }));
      }
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #getEventStudyDay(SpecimenInformation) <em>Get Event Study Day</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getEventStudyDay(SpecimenInformation)
   * @generated
   * @ordered
   */
  protected static final String GET_EVENT_STUDY_DAY__EOCL_EXP = "self.getObservations()->select(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(sdtm::Event Study Day))->asSequence()->first().oclAsType(sdtm::Event Study Day)";

  /**
   * The cached OCL query for the '{@link #getEventStudyDay(SpecimenInformation) <em>Get Event Study Day</em>}' query operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getEventStudyDay(SpecimenInformation)
   * @generated
   * @ordered
   */
  protected static OCLExpression<EClassifier> GET_EVENT_STUDY_DAY__EOCL_QRY;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.getObservations()->select(observation : cda::Observation | not observation.oclIsUndefined() and observation.oclIsKindOf(sdtm::Event Study Day))->asSequence()->first().oclAsType(sdtm::Event Study Day)
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  EventStudyDay getEventStudyDay(SpecimenInformation specimenInformation)
  {
    if (GET_EVENT_STUDY_DAY__EOCL_QRY == null)
    {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setOperationContext(SdtmPackage.Literals.SPECIMEN_INFORMATION, SdtmPackage.Literals.SPECIMEN_INFORMATION.getEAllOperations().get(77));
      try
      {
        GET_EVENT_STUDY_DAY__EOCL_QRY = helper.createQuery(GET_EVENT_STUDY_DAY__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    OCL.Query query = EOCL_ENV.createQuery(GET_EVENT_STUDY_DAY__EOCL_QRY);
    return (EventStudyDay) query.evaluate(specimenInformation);
  }

  /**
   * The cached OCL expression body for the '{@link #getTimingReference(SpecimenInformation) <em>Get Timing Reference</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTimingReference(SpecimenInformation)
   * @generated
   * @ordered
   */
  protected static final String GET_TIMING_REFERENCE__EOCL_EXP = "self.getActs()->select(act : cda::Act | not act.oclIsUndefined() and act.oclIsKindOf(sdtm::Timing Reference))->asSequence()->first().oclAsType(sdtm::Timing Reference)";

  /**
   * The cached OCL query for the '{@link #getTimingReference(SpecimenInformation) <em>Get Timing Reference</em>}' query operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getTimingReference(SpecimenInformation)
   * @generated
   * @ordered
   */
  protected static OCLExpression<EClassifier> GET_TIMING_REFERENCE__EOCL_QRY;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.getActs()->select(act : cda::Act | not act.oclIsUndefined() and act.oclIsKindOf(sdtm::Timing Reference))->asSequence()->first().oclAsType(sdtm::Timing Reference)
   * @param specimenInformation The receiving '<em><b>Specimen Information</b></em>' model object.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  TimingReference getTimingReference(SpecimenInformation specimenInformation)
  {
    if (GET_TIMING_REFERENCE__EOCL_QRY == null)
    {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setOperationContext(SdtmPackage.Literals.SPECIMEN_INFORMATION, SdtmPackage.Literals.SPECIMEN_INFORMATION.getEAllOperations().get(78));
      try
      {
        GET_TIMING_REFERENCE__EOCL_QRY = helper.createQuery(GET_TIMING_REFERENCE__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    OCL.Query query = EOCL_ENV.createQuery(GET_TIMING_REFERENCE__EOCL_QRY);
    return (TimingReference) query.evaluate(specimenInformation);
  }

} // SpecimenInformationOperations