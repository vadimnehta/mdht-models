/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package org.openhealthtools.mdht.uml.cda.sdtm.impl;

import java.util.Map;

import org.eclipse.emf.common.util.DiagnosticChain;

import org.eclipse.emf.ecore.EClass;

import org.openhealthtools.mdht.uml.cda.impl.Participant1Impl;

import org.openhealthtools.mdht.uml.cda.sdtm.SdtmPackage;
import org.openhealthtools.mdht.uml.cda.sdtm.StudyFindingEvaluator;

import org.openhealthtools.mdht.uml.cda.sdtm.operations.StudyFindingEvaluatorOperations;

import org.openhealthtools.mdht.uml.cda.util.CDAUtil;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Study Finding Evaluator</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * </p>
 *
 * @generated
 */
public class StudyFindingEvaluatorImpl extends Participant1Impl implements StudyFindingEvaluator
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected StudyFindingEvaluatorImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return SdtmPackage.Literals.STUDY_FINDING_EVALUATOR;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public boolean validateStudyFindingEvaluatorTemplateId(DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    return StudyFindingEvaluatorOperations.validateStudyFindingEvaluatorTemplateId(this, diagnostics, context);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public boolean validateStudyFindingEvaluatorTypeCode(DiagnosticChain diagnostics, Map<Object, Object> context)
  {
    return StudyFindingEvaluatorOperations.validateStudyFindingEvaluatorTypeCode(this, diagnostics, context);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public StudyFindingEvaluator init() {
    	CDAUtil.init(this);
    	return this;
  }
} //StudyFindingEvaluatorImpl
