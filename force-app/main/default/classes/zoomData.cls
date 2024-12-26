public class zoomData {

	public class ZoomUser {
		public String next_page_token;
		public Integer page_count;
		public Integer page_number;
		public Integer page_size;
		public Integer total_records;
		public List<Users> users;
	}

	public class Custom_attributes {
		public String key;
		public String name;
		public String value;
	}

	public class Users {
		public String user_created_at;
		public List<Custom_attributes> custom_attributes;
		public String dept;
		public String email;
		public String employee_unique_id;
		public String first_name;
		public List<String> group_ids;
		public String host_key;
		public String id;
		public List<String> im_group_ids;
		public String last_client_version;
		public String last_login_time;
		public String last_name;
		public String plan_united_type;
		public Long pmi;
		public String role_id;
		public String status;
		public String timezone;
		public Integer type;
		public Integer verified;
		public String display_name;
	}

	
	public static ZoomUser parse(String json) {
		return (ZoomUser) System.JSON.deserialize(json, ZoomUser.class);
	}
}