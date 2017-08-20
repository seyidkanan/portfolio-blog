package az.kanan.Test.blog.model;

/**
 * Created by Kanan on 8/19/2017.
 */
public class ResponseStatus {

    private int status;
    private String error;

    public ResponseStatus() {
    }

    public ResponseStatus(int status, String error) {
        this.status = status;
        this.error = error;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    @Override
    public String toString() {
        return "ResponseStatus{" +
                "status=" + status +
                ", error='" + error + '\'' +
                '}';
    }
}
