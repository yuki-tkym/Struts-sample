package struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

public final class AuthenticationAction extends Action {

	public ActionForward execute(ActionMapping mapping,
			ActionForm form,
			HttpServletRequest req,
			HttpServletResponse res) {

		HttpSession session = req.getSession();
		ActionMessages errors = new ActionMessages();

		AuthenticationForm authenticationForm = (AuthenticationForm)form;
		String id = authenticationForm.getId();
		String pass = authenticationForm.getPass();


		if(!(id.equals("java") && pass.equals("road"))) { //(5)
			errors.add(ActionMessages.GLOBAL_MESSAGE,new ActionMessage("errors.login"));
			saveErrors(req, errors);
			return (mapping.findForward("fail")); //(8)遷移先の指定
		} else {
			session.setAttribute("id", id); //(9)
			return (mapping.findForward("success"));  //(10)遷移先の指定
		}
	}
}