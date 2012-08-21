/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package org.openhealthtools.mdht.uml.cda.vsbr.operations;

import java.util.Map;

import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;

import org.eclipse.emf.ecore.EClassifier;

import org.eclipse.ocl.ParserException;

import org.eclipse.ocl.ecore.Constraint;
import org.eclipse.ocl.ecore.OCL;

import org.eclipse.ocl.expressions.OCLExpression;

import org.openhealthtools.mdht.uml.cda.operations.ClinicalDocumentOperations;

import org.openhealthtools.mdht.uml.cda.vsbr.BirthReportingPrenatalExperienceSection;
import org.openhealthtools.mdht.uml.cda.vsbr.LaborandDeliverySection;
import org.openhealthtools.mdht.uml.cda.vsbr.NewbornSection;
import org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords;
import org.openhealthtools.mdht.uml.cda.vsbr.VsbrPackage;

import org.openhealthtools.mdht.uml.cda.vsbr.util.VsbrValidator;

/**
 * <!-- begin-user-doc -->
 * A static utility class that provides operations related to '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model objects.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following operations are supported:
 * <ul>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTemplateId(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Template Id</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCodeP(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Code P</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCodeP(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Confidentiality Code P</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Confidentiality Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsMoodCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Mood Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsEffectiveTime(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Effective Time</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsId(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Id</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLanguageCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Language Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Realm Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCodeP(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Realm Code P</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTitle(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Title</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsAuthor(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Author</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCustodian(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Custodian</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRecordTarget(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Record Target</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsBirthReportingPrenatalExperienceSection(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Birth Reporting Prenatal Experience Section</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLaborandDeliverySection(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Laborand Delivery Section</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#validateReportingBirthInformationfromaclinicalsettingtovitalrecordsNewbornSection(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Newborn Section</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#getBirthReportingPrenatalExperienceSection() <em>Get Birth Reporting Prenatal Experience Section</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#getLaborandDeliverySection() <em>Get Laborand Delivery Section</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.vsbr.ReportingBirthInformationfromaclinicalsettingtovitalrecords#getNewbornSection() <em>Get Newborn Section</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class ReportingBirthInformationfromaclinicalsettingtovitalrecordsOperations extends ClinicalDocumentOperations
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ReportingBirthInformationfromaclinicalsettingtovitalrecordsOperations() {
    super();
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTemplateId(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Template Id</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTemplateId(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.26.1')";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTemplateId(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Template Id</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTemplateId(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.10.20.26.1')
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTemplateId(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TEMPLATE_ID,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsTemplateId", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Code P</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Code P</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE_P,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsCodeP", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and "+
"let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in "+
"value.codeSystem = '2.16.840.1.113883.6.1')";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
   * let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
   * value.codeSystem = '2.16.840.1.113883.6.1')
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Confidentiality Code P</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.confidentialityCode.oclIsUndefined() or self.confidentialityCode.isNullFlavorUndefined()) implies (not self.confidentialityCode.oclIsUndefined())";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Confidentiality Code P</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.confidentialityCode.oclIsUndefined() or self.confidentialityCode.isNullFlavorUndefined()) implies (not self.confidentialityCode.oclIsUndefined())
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE_P,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCodeP", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Confidentiality Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.confidentialityCode.oclIsUndefined() or self.confidentialityCode.isNullFlavorUndefined()) implies (not self.confidentialityCode.oclIsUndefined() and self.confidentialityCode.oclIsKindOf(datatypes::CE) and "+
"let value : datatypes::CE = self.confidentialityCode.oclAsType(datatypes::CE) in "+
"value.codeSystem = '2.16.840.1.11.3883.5.25')";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Confidentiality Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.confidentialityCode.oclIsUndefined() or self.confidentialityCode.isNullFlavorUndefined()) implies (not self.confidentialityCode.oclIsUndefined() and self.confidentialityCode.oclIsKindOf(datatypes::CE) and 
   * let value : datatypes::CE = self.confidentialityCode.oclAsType(datatypes::CE) in 
   * value.codeSystem = '2.16.840.1.11.3883.5.25')
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CONFIDENTIALITY_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsConfidentialityCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsMoodCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Mood Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsMoodCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.moodCode=vocab::ActMood::EVN";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsMoodCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Mood Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsMoodCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.moodCode=vocab::ActMood::EVN
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsMoodCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_MOOD_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_MOOD_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsMoodCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsEffectiveTime(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Effective Time</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsEffectiveTime(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.effectiveTime.oclIsUndefined() or self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsEffectiveTime(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Effective Time</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsEffectiveTime(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.effectiveTime.oclIsUndefined() or self.effectiveTime.isNullFlavorUndefined()) implies (not self.effectiveTime.oclIsUndefined())
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsEffectiveTime(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_EFFECTIVE_TIME__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_EFFECTIVE_TIME,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsEffectiveTime", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsId(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Id</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsId(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.id.oclIsUndefined() or self.id.isNullFlavorUndefined()) implies (not self.id.oclIsUndefined())";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsId(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Id</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsId(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.id.oclIsUndefined() or self.id.isNullFlavorUndefined()) implies (not self.id.oclIsUndefined())
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsId(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_ID,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsId", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLanguageCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Language Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLanguageCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LANGUAGE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.languageCode.oclIsUndefined() or self.languageCode.isNullFlavorUndefined()) implies (not self.languageCode.oclIsUndefined())";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLanguageCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Language Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLanguageCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LANGUAGE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.languageCode.oclIsUndefined() or self.languageCode.isNullFlavorUndefined()) implies (not self.languageCode.oclIsUndefined())
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLanguageCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LANGUAGE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LANGUAGE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LANGUAGE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LANGUAGE_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LANGUAGE_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsLanguageCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Realm Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.realmCode->isEmpty() or self.realmCode->exists(element | element.isNullFlavorUndefined())) implies (self.realmCode->size() = 1 and self.realmCode->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CS) and "+
"let value : datatypes::CS = element.oclAsType(datatypes::CS) in "+
"value.code = 'US'))";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Realm Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.realmCode->isEmpty() or self.realmCode->exists(element | element.isNullFlavorUndefined())) implies (self.realmCode->size() = 1 and self.realmCode->forAll(element | not element.oclIsUndefined() and element.oclIsKindOf(datatypes::CS) and 
   * let value : datatypes::CS = element.oclAsType(datatypes::CS) in 
   * value.code = 'US'))
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCode(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCode", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Realm Code P</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.realmCode->isEmpty() or self.realmCode->exists(element | element.isNullFlavorUndefined())) implies (self.realmCode->size() = 1)";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Realm Code P</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.realmCode->isEmpty() or self.realmCode->exists(element | element.isNullFlavorUndefined())) implies (self.realmCode->size() = 1)
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCodeP(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_REALM_CODE_P,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsRealmCodeP", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTitle(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Title</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTitle(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.title.oclIsUndefined() or self.title.isNullFlavorUndefined()) implies (not self.title.oclIsUndefined())";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTitle(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Title</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTitle(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.title.oclIsUndefined() or self.title.isNullFlavorUndefined()) implies (not self.title.oclIsUndefined())
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsTitle(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_TITLE,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsTitle", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsAuthor(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Author</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsAuthor(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_AUTHOR__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.author->one(author : cda::Author | not author.oclIsUndefined() and author.oclIsKindOf(cda::Author))";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsAuthor(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Author</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsAuthor(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_AUTHOR__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.author->one(author : cda::Author | not author.oclIsUndefined() and author.oclIsKindOf(cda::Author))
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsAuthor(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_AUTHOR__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_AUTHOR__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_AUTHOR__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_AUTHOR__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_AUTHOR,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsAuthor", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCustodian(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Custodian</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCustodian(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CUSTODIAN__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.custodian->one(custodian : cda::Custodian | not custodian.oclIsUndefined() and custodian.oclIsKindOf(cda::Custodian))";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCustodian(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Custodian</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCustodian(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CUSTODIAN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.custodian->one(custodian : cda::Custodian | not custodian.oclIsUndefined() and custodian.oclIsKindOf(cda::Custodian))
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsCustodian(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CUSTODIAN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CUSTODIAN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CUSTODIAN__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CUSTODIAN__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_CUSTODIAN,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsCustodian", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRecordTarget(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Record Target</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRecordTarget(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_RECORD_TARGET__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.recordTarget->one(recordTarget : cda::RecordTarget | not recordTarget.oclIsUndefined() and recordTarget.oclIsKindOf(cda::RecordTarget))";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRecordTarget(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Record Target</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRecordTarget(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_RECORD_TARGET__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.recordTarget->one(recordTarget : cda::RecordTarget | not recordTarget.oclIsUndefined() and recordTarget.oclIsKindOf(cda::RecordTarget))
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsRecordTarget(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_RECORD_TARGET__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_RECORD_TARGET__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_RECORD_TARGET__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_RECORD_TARGET__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_RECORD_TARGET,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsRecordTarget", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsBirthReportingPrenatalExperienceSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Birth Reporting Prenatal Experience Section</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsBirthReportingPrenatalExperienceSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Birth Reporting - Prenatal Experience Section))";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsBirthReportingPrenatalExperienceSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Birth Reporting Prenatal Experience Section</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsBirthReportingPrenatalExperienceSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Birth Reporting - Prenatal Experience Section))
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsBirthReportingPrenatalExperienceSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsBirthReportingPrenatalExperienceSection", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLaborandDeliverySection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Laborand Delivery Section</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLaborandDeliverySection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LABORAND_DELIVERY_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Labor and Delivery Section))";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLaborandDeliverySection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Laborand Delivery Section</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLaborandDeliverySection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LABORAND_DELIVERY_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Labor and Delivery Section))
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsLaborandDeliverySection(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LABORAND_DELIVERY_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LABORAND_DELIVERY_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LABORAND_DELIVERY_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LABORAND_DELIVERY_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_LABORAND_DELIVERY_SECTION,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsLaborandDeliverySection", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsNewbornSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Newborn Section</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsNewbornSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_NEWBORN_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Newborn Section))";

  /**
   * The cached OCL invariant for the '{@link #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsNewbornSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate Reporting Birth Informationfromaclinicalsettingtovitalrecords Newborn Section</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateReportingBirthInformationfromaclinicalsettingtovitalrecordsNewbornSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_NEWBORN_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.getAllSections()->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Newborn Section))
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateReportingBirthInformationfromaclinicalsettingtovitalrecordsNewbornSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_NEWBORN_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS);
      try
      {
        VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_NEWBORN_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_NEWBORN_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_NEWBORN_SECTION__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(reportingBirthInformationfromaclinicalsettingtovitalrecords))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             VsbrValidator.DIAGNOSTIC_SOURCE,
             VsbrValidator.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS__REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS_NEWBORN_SECTION,
             org.eclipse.emf.ecore.plugin.EcorePlugin.INSTANCE.getString("_UI_GenericInvariant_diagnostic", new Object[] { "ReportingBirthInformationfromaclinicalsettingtovitalrecordsNewbornSection", org.eclipse.emf.ecore.util.EObjectValidator.getObjectLabel(reportingBirthInformationfromaclinicalsettingtovitalrecords, context) }),
             new Object [] { reportingBirthInformationfromaclinicalsettingtovitalrecords }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #getBirthReportingPrenatalExperienceSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords) <em>Get Birth Reporting Prenatal Experience Section</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getBirthReportingPrenatalExperienceSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords)
   * @generated
   * @ordered
   */
  protected static final String GET_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__EOCL_EXP = "self.getAllSections()->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Birth Reporting - Prenatal Experience Section))->asSequence()->any(true).oclAsType(vsbr::Birth Reporting - Prenatal Experience Section)";

  /**
   * The cached OCL query for the '{@link #getBirthReportingPrenatalExperienceSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords) <em>Get Birth Reporting Prenatal Experience Section</em>}' query operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getBirthReportingPrenatalExperienceSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords)
   * @generated
   * @ordered
   */
  protected static OCLExpression<EClassifier> GET_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__EOCL_QRY;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.getAllSections()->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Birth Reporting - Prenatal Experience Section))->asSequence()->any(true).oclAsType(vsbr::Birth Reporting - Prenatal Experience Section)
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  BirthReportingPrenatalExperienceSection getBirthReportingPrenatalExperienceSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords)
  {
    if (GET_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__EOCL_QRY == null)
    {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setOperationContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS, VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS.getEAllOperations().get(47));
      try
      {
        GET_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__EOCL_QRY = helper.createQuery(GET_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    OCL.Query query = EOCL_ENV.createQuery(GET_BIRTH_REPORTING_PRENATAL_EXPERIENCE_SECTION__EOCL_QRY);
    return (BirthReportingPrenatalExperienceSection) query.evaluate(reportingBirthInformationfromaclinicalsettingtovitalrecords);
  }

  /**
   * The cached OCL expression body for the '{@link #getLaborandDeliverySection(ReportingBirthInformationfromaclinicalsettingtovitalrecords) <em>Get Laborand Delivery Section</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getLaborandDeliverySection(ReportingBirthInformationfromaclinicalsettingtovitalrecords)
   * @generated
   * @ordered
   */
  protected static final String GET_LABORAND_DELIVERY_SECTION__EOCL_EXP = "self.getAllSections()->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Labor and Delivery Section))->asSequence()->any(true).oclAsType(vsbr::Labor and Delivery Section)";

  /**
   * The cached OCL query for the '{@link #getLaborandDeliverySection(ReportingBirthInformationfromaclinicalsettingtovitalrecords) <em>Get Laborand Delivery Section</em>}' query operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getLaborandDeliverySection(ReportingBirthInformationfromaclinicalsettingtovitalrecords)
   * @generated
   * @ordered
   */
  protected static OCLExpression<EClassifier> GET_LABORAND_DELIVERY_SECTION__EOCL_QRY;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.getAllSections()->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Labor and Delivery Section))->asSequence()->any(true).oclAsType(vsbr::Labor and Delivery Section)
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  LaborandDeliverySection getLaborandDeliverySection(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords)
  {
    if (GET_LABORAND_DELIVERY_SECTION__EOCL_QRY == null)
    {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setOperationContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS, VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS.getEAllOperations().get(48));
      try
      {
        GET_LABORAND_DELIVERY_SECTION__EOCL_QRY = helper.createQuery(GET_LABORAND_DELIVERY_SECTION__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    OCL.Query query = EOCL_ENV.createQuery(GET_LABORAND_DELIVERY_SECTION__EOCL_QRY);
    return (LaborandDeliverySection) query.evaluate(reportingBirthInformationfromaclinicalsettingtovitalrecords);
  }

  /**
   * The cached OCL expression body for the '{@link #getNewbornSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords) <em>Get Newborn Section</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getNewbornSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords)
   * @generated
   * @ordered
   */
  protected static final String GET_NEWBORN_SECTION__EOCL_EXP = "self.getAllSections()->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Newborn Section))->asSequence()->any(true).oclAsType(vsbr::Newborn Section)";

  /**
   * The cached OCL query for the '{@link #getNewbornSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords) <em>Get Newborn Section</em>}' query operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getNewbornSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords)
   * @generated
   * @ordered
   */
  protected static OCLExpression<EClassifier> GET_NEWBORN_SECTION__EOCL_QRY;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.getAllSections()->select(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(vsbr::Newborn Section))->asSequence()->any(true).oclAsType(vsbr::Newborn Section)
   * @param reportingBirthInformationfromaclinicalsettingtovitalrecords The receiving '<em><b>Reporting Birth Informationfromaclinicalsettingtovitalrecords</b></em>' model object.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  NewbornSection getNewbornSection(ReportingBirthInformationfromaclinicalsettingtovitalrecords reportingBirthInformationfromaclinicalsettingtovitalrecords)
  {
    if (GET_NEWBORN_SECTION__EOCL_QRY == null)
    {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setOperationContext(VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS, VsbrPackage.Literals.REPORTING_BIRTH_INFORMATIONFROMACLINICALSETTINGTOVITALRECORDS.getEAllOperations().get(49));
      try
      {
        GET_NEWBORN_SECTION__EOCL_QRY = helper.createQuery(GET_NEWBORN_SECTION__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    OCL.Query query = EOCL_ENV.createQuery(GET_NEWBORN_SECTION__EOCL_QRY);
    return (NewbornSection) query.evaluate(reportingBirthInformationfromaclinicalsettingtovitalrecords);
  }

} // ReportingBirthInformationfromaclinicalsettingtovitalrecordsOperations