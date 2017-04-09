package br.com.casadocodigo.loja.infra;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileSaver {

	@Autowired 
	private HttpServletRequest request;
	
	public String salvar(String basePath, MultipartFile file) {
		try {
			String realPath = request.getServletContext().getRealPath(File.separator+basePath);
			String path = realPath+File.separator+file.getOriginalFilename();
			
			file.transferTo(new File(path));

			return basePath + File.separator + file.getOriginalFilename();
		} catch (IllegalStateException | IOException e) {
			throw new RuntimeException(e);
		}
	}
}
