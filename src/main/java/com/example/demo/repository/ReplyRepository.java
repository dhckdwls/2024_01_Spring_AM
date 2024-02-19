package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.demo.vo.Article;
import com.example.demo.vo.Reply;

@Mapper
public interface ReplyRepository {

	@Insert("""
			INSERT INTO reply
			SET regDate = NOW(),
			updateDate = NOW(),
			memberId = #{memberId},
			relTypeCode = 'article',
			relId = #{relId},
			`comment` = #{comment};
			""")
	public void writeReply(int memberId, String comment, int relId);

	@Select("SELECT LAST_INSERT_ID()")
	public int getLastInsertId();

	@Select("""
			SELECT *
			FROM reply
			WHERE id = #{id}
			""")
	public Reply getReply(int id);

	@Select("""
			SELECT *
			FROM reply
			WHERE relId = #{id} AND relTypeCode = 'article'
			ORDER BY id DESC
						""")
	public List<Reply> getReplys(int id);
	
	@Delete("""
			DELETE FROM reply WHERE id = #{id}
			""")
	public void doDelete(int id);
	
	
	@Select("""
			<script>
				SELECT R.*, M.nickname AS extra__writer
				FROM reply AS R
				INNER JOIN `member` AS M
				ON R.memberId = M.id
				WHERE R.id = #{id}
				GROUP BY R.id
			</script>
				""")
	public Reply getForPrintReply(int id);
	
	
	@Update("""
			UPDATE reply
				<set>
					<if test="comment != null and comment != ''">`comment` = #{comment}</if>
					updateDate = NOW()
				</set>
			WHERE id = #{id}
				""")
	public void modifyReply(int id, String comment);
	
	
	
	



}