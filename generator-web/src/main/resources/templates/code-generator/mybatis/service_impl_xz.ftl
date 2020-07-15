package ${packageName}.service.impl;

import ${packageName}.service.${classInfo.className}Service;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import ${packageName}.mapper.${classInfo.className}Mapper;

/**
* @Description:
* @author: ${authorName}
* @CreateDate: ${.now?string('yyyy-MM-dd')}
*/
@Slf4j
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

	@Resource
	private ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;


}
