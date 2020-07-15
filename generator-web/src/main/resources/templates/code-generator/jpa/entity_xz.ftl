package ${packageName}.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import java.util.Date;

/**
* @Description:
* @author: ${authorName}
* @CreateDate: ${.now?string('yyyy-MM-dd')}
*/

@Data
@TableName("${classInfo.tableName}")
@ApiModel
@Builder
public class ${classInfo.entityName} {

    @TableId(value = "id", type = IdType.ID_WORKER_STR)
<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem >
    @ApiModelProperty(value = "${fieldItem.fieldComment}")
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

</#list>
</#if>

}