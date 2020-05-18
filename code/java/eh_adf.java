
/*
  View Object methods
*/

Row[] filteredRows = myViewObjectImpl.getFilteredRows("NameId", nameRow.getNameId());


/*
  RowSetIterator to loop through the rows in a VO
*/

RowSetIterator rSI = getMyView().createRowSetIterator(null);

while (rSI.hasNext()) {
    MyViewRowImpl myRow = (MyViewRowImpl) rSI.next();

  }

 
//---------------------------------------------------------------------------------------

RowIterator rowIt =
binding.findRowsByAttributeValues(new String[] { "DisplayDesc" },
                                  new Object[] { EndOfMonthProcessing.getCurrentInstance().getSelectedMonthDesc() });

RowIterator rows =
binding.findRowsByAttributeValue("SourceId", true, Notes.getCurrentInstance().getNoteDoc().getDocSource());



/*
 Transaction and Transaction Grouping then call enqueuer
*/

//if submitting lodgement, do the queue stuff
if (lodged) {
    //Transaction
    AdfUtils.findOperation("CreateInsertTransaction").execute();
    DCIteratorBinding transBinding = AdfUtils.findIterator("TransactionsViewIterator");
    TransactionsViewRowImpl transRow = (TransactionsViewRowImpl) transBinding.getCurrentRow();
    transRow.setTransTypeCode(TransactionTypes.DUTNEW);
    transRow.setLodgementSource(LodgementSource.RP);
    transRow.setStatus(TransactionStatus.PENDING);
    transRow.setSubmissionTime(Timestamp.valueOf(LocalDateTime.now()));

    //TransactionGrouping
    AdfUtils.findOperation("CreateInsertTransactionGrouping").execute();
    DCIteratorBinding tranGrpBinding = AdfUtils.findIterator("TransactionGroupingViewIterator");
    TransactionGroupingViewRowImpl tranGrpRow =
        (TransactionGroupingViewRowImpl) tranGrpBinding.getCurrentRow();
    tranGrpRow.setTransactionId(transRow.getTransactionId());
    tranGrpRow.setMessageId(currentRow.getMessageId());
    tranGrpRow.setMessageType(MessageTypes.DUTIES_LODGEMENT);
    tranGrpRow.setMessageOrder(new Integer(0));

    OperationBinding queue = AdfUtils.findOperation("rolngEnqueuer");
    Map map = queue.getParamsMap();
    map.put("transactionId", transRow.getTransactionId());
    queue.execute();
}

if (commit) {
    //done. save
    AdfUtils.findOperation("Commit").execute();
}


// Page Flow Bean with static method to provide access to its instance

package sage.beans.pageFlow;

import sage.common.view.JsfUtils;

public class MyPageFlowBean {

  public MyPageFlowBean() {
    super();
  }

  public static MyPageFlowBean getPageFlowScope {
    return (MyPageFlowBean) JsfUtils.getManagedBeanValue("pageFlowScope.myPageFlowBean");
  }

}



// populate EO Attribute from Sequence using groovy
adf.object.seqNextVal("SCHEMA.MY_ID_SEQ");

//put in EntityImpl
/**
 * Source: http://one-size-doesnt-fit-all.blogspot.com/2009/03/adf-bc-using-groovy-to-fetch-sequence.html
 */

public Number seqNextVal(String seqName) {
  Number seqNextVal = null;

  if (seqName != null && !seqName.equals("")) {
    SequenceImpl seq = new SequenceImpl(seqName, getDBTransaction());
    seqNextVal = seq.getSequenceNumber();
  } else {
    throw new JboException("Programmatic error CommonEntityImpl.seqNextValue - null or empty seqName");
  }

  return seqNextVal;
}

// throw exception
import oracle.jbo.JboException;

try {

  catch (Exception e) {
    throw new JboException(ex);

  }
}

// get the errors


// Faces Messages

try {
        this.uploadFile(file);
    } catch (IOException e) {
        JsfUtils.addFacesErrorMessage(e.getMessage());
    }

throw new ValidatorException(generateErrorMessage("Client ID is not active"));


 private FacesMessage generateErrorMessage(String text) {
    FacesMessage msg = new FacesMessage(text);
    msg.setSeverity(FacesMessage.SEVERITY_ERROR);
    return msg;
}

public static void addFacesErrorMessage(String message) {
    FacesMessage fm = new FacesMessage(FacesMessage.SEVERITY_ERROR, "", message);
    getFacesContext().addMessage(null, fm);
}

public static FacesContext getFacesContext() {
    return FacesContext.getCurrentInstance();
}
