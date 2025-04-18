package beans;
import java.util.Objects;
public class Product 
{
		private int pid;
		private String pname;
		private float price;
		private int discount_percentage;
		private String description;
		private String prod_image;
		public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public String getPname() {
			return pname;
		}
		public void setPname(String pname) {
			this.pname = pname;
		}
		public float getPrice() {
			return price;
		}
		public void setPrice(float price) {
			this.price = price;
		}
		public int getDiscount_percentage() {
			return discount_percentage;
		}
		public void setDiscount_percentage(int discount_percentage) {
			this.discount_percentage = discount_percentage;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getProd_image() {
			return prod_image;
		}
		public void setProd_image(String prod_image) {
			this.prod_image = prod_image;
		}
		
		
		
		public Product() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Product(int pid, String pname, float price, int discount_percentage, String description,
				String prod_image) {
			super();
			this.pid = pid;
			this.pname = pname;
			this.price = price;
			this.discount_percentage = discount_percentage;
			this.description = description;
			this.prod_image = prod_image;
		}
		@Override
		public int hashCode() {
			return Objects.hash(description, discount_percentage, pid, pname, price, prod_image);
		}
		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Product other = (Product) obj;
			return Objects.equals(description, other.description) && discount_percentage == other.discount_percentage
					&& pid == other.pid && Objects.equals(pname, other.pname)
					&& Float.floatToIntBits(price) == Float.floatToIntBits(other.price)
					&& Objects.equals(prod_image, other.prod_image);
		}
		@Override
		public String toString() {
			return "Product [pid=" + pid + ", pname=" + pname + ", price=" + price + ", discount_percentage="
					+ discount_percentage + ", description=" + description + ", prod_image=" + prod_image + "]";
		}

		
		
		
}
