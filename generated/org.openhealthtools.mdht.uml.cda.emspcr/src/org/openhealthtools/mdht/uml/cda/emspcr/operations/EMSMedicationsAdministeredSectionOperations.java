/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package org.openhealthtools.mdht.uml.cda.emspcr.operations;

import java.util.Collection;
import java.util.Map;

import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;

import org.eclipse.ocl.ParserException;

import org.eclipse.ocl.ecore.Constraint;
import org.eclipse.ocl.ecore.OCL;

import org.openhealthtools.mdht.uml.cda.emspcr.EMSMedicationsAdministeredSection;
import org.openhealthtools.mdht.uml.cda.emspcr.EmspcrPackage;
import org.openhealthtools.mdht.uml.cda.emspcr.EmspcrPlugin;

import org.openhealthtools.mdht.uml.cda.emspcr.util.EmspcrValidator;

import org.openhealthtools.mdht.uml.cda.operations.SectionOperations;

/**
 * <!-- begin-user-doc -->
 * A static utility class that provides operations related to '<em><b>EMS Medications Administered Section</b></em>' model objects.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following operations are supported:
 * <ul>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.emspcr.EMSMedicationsAdministeredSection#validateEMSMedicationsAdministeredSectionTemplateId(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Template Id</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.emspcr.EMSMedicationsAdministeredSection#validateEMSMedicationsAdministeredSectionCodeP(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Code P</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.emspcr.EMSMedicationsAdministeredSection#validateEMSMedicationsAdministeredSectionCode(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Code</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.emspcr.EMSMedicationsAdministeredSection#validateEMSMedicationsAdministeredSectionText(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Text</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.emspcr.EMSMedicationsAdministeredSection#validateEMSMedicationsAdministeredSectionTitle(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Title</em>}</li>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.emspcr.EMSMedicationsAdministeredSection#validateEMSMedicationsAdministeredSectionEntry1(org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Entry1</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class EMSMedicationsAdministeredSectionOperations extends SectionOperations
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected EMSMedicationsAdministeredSectionOperations() {
    super();
  }

  /**
   * The cached OCL expression body for the '{@link #validateEMSMedicationsAdministeredSectionTemplateId(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Template Id</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionTemplateId(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.17.3.10.1.18')";

  /**
   * The cached OCL invariant for the '{@link #validateEMSMedicationsAdministeredSectionTemplateId(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Template Id</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionTemplateId(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.templateId->exists(id : datatypes::II | id.root = '2.16.840.1.113883.17.3.10.1.18')
   * @param emsMedicationsAdministeredSection The receiving '<em><b>EMS Medications Administered Section</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateEMSMedicationsAdministeredSectionTemplateId(EMSMedicationsAdministeredSection emsMedicationsAdministeredSection, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(EmspcrPackage.Literals.EMS_MEDICATIONS_ADMINISTERED_SECTION);
      try
      {
        VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEMPLATE_ID__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(emsMedicationsAdministeredSection))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             EmspcrValidator.DIAGNOSTIC_SOURCE,
             EmspcrValidator.EMS_MEDICATIONS_ADMINISTERED_SECTION__EMS_MEDICATIONS_ADMINISTERED_SECTION_TEMPLATE_ID,
             EmspcrPlugin.INSTANCE.getString("EMSMedicationsAdministeredSectionTemplateId"),
             new Object [] { emsMedicationsAdministeredSection }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateEMSMedicationsAdministeredSectionCodeP(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Code P</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionCodeP(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())";

  /**
   * The cached OCL invariant for the '{@link #validateEMSMedicationsAdministeredSectionCodeP(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Code P</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionCodeP(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined())
   * @param emsMedicationsAdministeredSection The receiving '<em><b>EMS Medications Administered Section</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateEMSMedicationsAdministeredSectionCodeP(EMSMedicationsAdministeredSection emsMedicationsAdministeredSection, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(EmspcrPackage.Literals.EMS_MEDICATIONS_ADMINISTERED_SECTION);
      try
      {
        VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE_P__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(emsMedicationsAdministeredSection))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             EmspcrValidator.DIAGNOSTIC_SOURCE,
             EmspcrValidator.EMS_MEDICATIONS_ADMINISTERED_SECTION__EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE_P,
             EmspcrPlugin.INSTANCE.getString("EMSMedicationsAdministeredSectionCodeP"),
             new Object [] { emsMedicationsAdministeredSection }));
      }
      
      if (context != null) {
        // generate a pass token for my dependent constraints to short-circuit or filter results
        @SuppressWarnings("unchecked")
        Collection<Object> passToken = (Collection<Object>) context.get("org.openhealthtools.mdht.uml.cda.emspcr.EMSMedicationsAdministeredSectionCodeP");
        if (passToken == null) {
          // anticipate a reasonably healthy model
          passToken = new java.util.ArrayList<Object>(3);
          context.put("org.openhealthtools.mdht.uml.cda.emspcr.EMSMedicationsAdministeredSectionCodeP", passToken);
        }
        passToken.add(emsMedicationsAdministeredSection);
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateEMSMedicationsAdministeredSectionCode(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Code</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionCode(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and "+
"let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in "+
"value.code = '67849-0' and value.codeSystem = '2.16.840.1.113883.6.1')";

  /**
   * The cached OCL invariant for the '{@link #validateEMSMedicationsAdministeredSectionCode(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Code</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionCode(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.code.oclIsUndefined() or self.code.isNullFlavorUndefined()) implies (not self.code.oclIsUndefined() and self.code.oclIsKindOf(datatypes::CE) and 
   * let value : datatypes::CE = self.code.oclAsType(datatypes::CE) in 
   * value.code = '67849-0' and value.codeSystem = '2.16.840.1.113883.6.1')
   * @param emsMedicationsAdministeredSection The receiving '<em><b>EMS Medications Administered Section</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateEMSMedicationsAdministeredSectionCode(EMSMedicationsAdministeredSection emsMedicationsAdministeredSection, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    Object passToken = (context == null) ? null : context.get("org.openhealthtools.mdht.uml.cda.emspcr.EMSMedicationsAdministeredSectionCodeP");
    if ((passToken instanceof Collection<?>) && ((Collection<?>) passToken).contains(emsMedicationsAdministeredSection)) {
      // I have a free pass to short-circuit
      return true;
    }
  	  
    if (VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(EmspcrPackage.Literals.EMS_MEDICATIONS_ADMINISTERED_SECTION);
      try
      {
        VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(emsMedicationsAdministeredSection))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             EmspcrValidator.DIAGNOSTIC_SOURCE,
             EmspcrValidator.EMS_MEDICATIONS_ADMINISTERED_SECTION__EMS_MEDICATIONS_ADMINISTERED_SECTION_CODE,
             EmspcrPlugin.INSTANCE.getString("EMSMedicationsAdministeredSectionCode"),
             new Object [] { emsMedicationsAdministeredSection }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateEMSMedicationsAdministeredSectionText(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Text</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionText(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEXT__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "not self.text.oclIsUndefined()";

  /**
   * The cached OCL invariant for the '{@link #validateEMSMedicationsAdministeredSectionText(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Text</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionText(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEXT__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * not self.text.oclIsUndefined()
   * @param emsMedicationsAdministeredSection The receiving '<em><b>EMS Medications Administered Section</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateEMSMedicationsAdministeredSectionText(EMSMedicationsAdministeredSection emsMedicationsAdministeredSection, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEXT__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(EmspcrPackage.Literals.EMS_MEDICATIONS_ADMINISTERED_SECTION);
      try
      {
        VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEXT__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEXT__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TEXT__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(emsMedicationsAdministeredSection))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             EmspcrValidator.DIAGNOSTIC_SOURCE,
             EmspcrValidator.EMS_MEDICATIONS_ADMINISTERED_SECTION__EMS_MEDICATIONS_ADMINISTERED_SECTION_TEXT,
             EmspcrPlugin.INSTANCE.getString("EMSMedicationsAdministeredSectionText"),
             new Object [] { emsMedicationsAdministeredSection }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateEMSMedicationsAdministeredSectionTitle(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Title</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionTitle(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "(self.title.oclIsUndefined() or self.title.isNullFlavorUndefined()) implies (not self.title.oclIsUndefined())";

  /**
   * The cached OCL invariant for the '{@link #validateEMSMedicationsAdministeredSectionTitle(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Title</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionTitle(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * (self.title.oclIsUndefined() or self.title.isNullFlavorUndefined()) implies (not self.title.oclIsUndefined())
   * @param emsMedicationsAdministeredSection The receiving '<em><b>EMS Medications Administered Section</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateEMSMedicationsAdministeredSectionTitle(EMSMedicationsAdministeredSection emsMedicationsAdministeredSection, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(EmspcrPackage.Literals.EMS_MEDICATIONS_ADMINISTERED_SECTION);
      try
      {
        VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_TITLE__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(emsMedicationsAdministeredSection))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             EmspcrValidator.DIAGNOSTIC_SOURCE,
             EmspcrValidator.EMS_MEDICATIONS_ADMINISTERED_SECTION__EMS_MEDICATIONS_ADMINISTERED_SECTION_TITLE,
             EmspcrPlugin.INSTANCE.getString("EMSMedicationsAdministeredSectionTitle"),
             new Object [] { emsMedicationsAdministeredSection }));
      }
       
      return false;
    }
    return true;
  }

  /**
   * The cached OCL expression body for the '{@link #validateEMSMedicationsAdministeredSectionEntry1(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Entry1</em>}' operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionEntry1(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  protected static final String VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_ENTRY1__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP = "self.entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(emspcr::EMSMedicationsAdministeredSection::DerivedEntry))";

  /**
   * The cached OCL invariant for the '{@link #validateEMSMedicationsAdministeredSectionEntry1(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map) <em>Validate EMS Medications Administered Section Entry1</em>}' invariant operation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #validateEMSMedicationsAdministeredSectionEntry1(EMSMedicationsAdministeredSection, org.eclipse.emf.common.util.DiagnosticChain, java.util.Map)
   * @generated
   * @ordered
   */
  
  protected static Constraint VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_ENTRY1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV;
  

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * <!-- begin-model-doc -->
   * self.entry->one(entry : cda::Entry | not entry.oclIsUndefined() and entry.oclIsKindOf(emspcr::EMSMedicationsAdministeredSection::DerivedEntry))
   * @param emsMedicationsAdministeredSection The receiving '<em><b>EMS Medications Administered Section</b></em>' model object.
   * @param diagnostics The chain of diagnostics to which problems are to be appended.
   * @param context The cache of context-specific information.
   * <!-- end-model-doc -->
   * @generated
   */
  
  public static  boolean validateEMSMedicationsAdministeredSectionEntry1(EMSMedicationsAdministeredSection emsMedicationsAdministeredSection, DiagnosticChain diagnostics, Map<Object, Object> context)
  {
  	  
    if (VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_ENTRY1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV == null) {
      OCL.Helper helper = EOCL_ENV.createOCLHelper();
      helper.setContext(EmspcrPackage.Literals.EMS_MEDICATIONS_ADMINISTERED_SECTION);
      try
      {
        VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_ENTRY1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV = helper.createInvariant(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_ENTRY1__DIAGNOSTIC_CHAIN_MAP__EOCL_EXP);
      }
      catch (ParserException pe)
      {
        throw new UnsupportedOperationException(pe.getLocalizedMessage());
      }
    }
    if (!EOCL_ENV.createQuery(VALIDATE_EMS_MEDICATIONS_ADMINISTERED_SECTION_ENTRY1__DIAGNOSTIC_CHAIN_MAP__EOCL_INV).check(emsMedicationsAdministeredSection))
    {
      if (diagnostics != null)
      {
        diagnostics.add
          (new BasicDiagnostic
            (Diagnostic.ERROR,
             EmspcrValidator.DIAGNOSTIC_SOURCE,
             EmspcrValidator.EMS_MEDICATIONS_ADMINISTERED_SECTION__EMS_MEDICATIONS_ADMINISTERED_SECTION_ENTRY1,
             EmspcrPlugin.INSTANCE.getString("EMSMedicationsAdministeredSectionEntry1"),
             new Object [] { emsMedicationsAdministeredSection }));
      }
       
      return false;
    }
    return true;
  }

} // EMSMedicationsAdministeredSectionOperations