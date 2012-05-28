package Exception;

import javax.ejb.ApplicationException;

/**
 * Cette exception est lancee lorsque la validation d'une donnee ne peut se faire
 */

@ApplicationException(rollback = true)
public class ValidationException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	public ValidationException(String message) {
        super(message);
    }
}