package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.PageMaker;
import org.zerock.domain.SearchCriteria;
import org.zerock.service.BoardService;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by macbookpro on 2017. 2. 12. PM 12:44
 * sp4chap11-Project / org.zerock.controller
 * No pain, No gain!
 * What :
 * Why :
 * How :
 */


@Controller
@RequestMapping("/sboard/*")
public class SearchBoardController {

    private static final Logger logger = LoggerFactory.getLogger(SearchBoardController.class);

    @Inject
    private BoardService service;

    /**
     * List page.
     *
     * @param cri   the cri
     * @param model the model
     * @throws Exception the exception
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public void listPage(@ModelAttribute("cri") SearchCriteria cri,
                         Model model) throws Exception {

        logger.info(cri.toString());

        // model.addAttribute("list", service.listCriteria(cri));
        model.addAttribute("list", service.listSearchCriteria(cri));

        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);

        // pageMaker.setTotalCount(service.listCountCriteria(cri));
        pageMaker.setTotalCount(service.listSearchCount(cri));

        model.addAttribute("pageMaker", pageMaker);
    }

    /**
     * Read.
     *
     * @param bno   the bno
     * @param cri   the cri
     * @param model the model
     * @throws Exception the exception
     */
    @RequestMapping(value = "/readPage", method = RequestMethod.GET)
    public void read(@RequestParam("bno") int bno,
                     @ModelAttribute("cri") SearchCriteria cri,
                     Model model)
            throws Exception {

        model.addAttribute(service.read(bno));
    }

    /**
     * Remove string.
     *
     * @param bno  the bno
     * @param cri  the cri
     * @param rttr the rttr
     * @return the string
     * @throws Exception the exception
     */
    @RequestMapping(value = "/removePage", method = RequestMethod.POST)
    public String remove(@RequestParam("bno") int bno,
                         SearchCriteria cri,
                         RedirectAttributes rttr) throws Exception {

        service.remove(bno);

        rttr.addAttribute("page", cri.getPage());
        rttr.addAttribute("perPageNum", cri.getPerPageNum());
        rttr.addAttribute("searchType", cri.getSearchType());
        rttr.addAttribute("keyword", cri.getKeyword());

        rttr.addFlashAttribute("msg", "SUCCESS");

        return "redirect:/sboard/list";
    }

    /**
     * Modify paging get.
     *
     * @param bno   the bno
     * @param cri   the cri
     * @param model the model
     * @throws Exception the exception
     */
    @RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
    public void modifyPagingGET(int bno,
                                @ModelAttribute("cri") SearchCriteria cri,
                                Model model) throws Exception {

        model.addAttribute(service.read(bno));
    }

    /**
     * Modify paging post string.
     *
     * @param board the board
     * @param cri   the cri
     * @param rttr  the rttr
     * @return the string
     * @throws Exception the exception
     */
    @RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
    public String modifyPagingPOST(BoardVO board,
                                   SearchCriteria cri,
                                   RedirectAttributes rttr) throws Exception {

        logger.info(cri.toString());
        service.modify(board);

        rttr.addAttribute("page", cri.getPage());
        rttr.addAttribute("perPageNum", cri.getPerPageNum());
        rttr.addAttribute("searchType", cri.getSearchType());
        rttr.addAttribute("keyword", cri.getKeyword());

        rttr.addFlashAttribute("msg", "SUCCESS");

        logger.info(rttr.toString());

        return "redirect:/sboard/list";
    }

    /**
     * Regist get.
     *
     * @throws Exception the exception
     */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public void registGET() throws Exception {

        logger.info("lll~~~ regist get ........... lll~~~");
    }

    /**
     * Regist post string.
     *
     * @param board the board
     * @param rttr  the rttr
     * @return the string
     * @throws Exception the exception
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registPOST(BoardVO board,
                             RedirectAttributes rttr) throws Exception {

        logger.info("lll~~~ regist post ........... lll~~~");
        logger.info(board.toString());

        service.regist(board);

        rttr.addFlashAttribute("msg", "SUCCESS");

        return "redirect:/sboard/list";
    }

    /**
     * Ajax로 호출되는 특정 게시물의 첨부파일을 처리하는 메소드를 아래와 같이 작성.
     *
     * @param bno 호출하는 경로는 '/sboard/getAttach/게시물 번호'의 형태가 됨.
     * @return 첨부파일의 문자열 리스트 형태로 작성.
     * @throws Exception
     */
    @RequestMapping("/getAttach/{bno}")
    @ResponseBody
    public List<String> getAttach(@PathVariable("bno") Integer bno) throws Exception {

        return service.getAttach(bno);
    }

    // @RequestMapping(value = "/list", method = RequestMethod.GET)
    // public void listPage(@ModelAttribute("cri") SearchCriteria cri,
    // Model model) throws Exception {
    //
    // logger.info(cri.toString());
    //
    // model.addAttribute("list", service.listCriteria(cri));
    //
    // PageMaker pageMaker = new PageMaker();
    // pageMaker.setCri(cri);
    //
    // pageMaker.setTotalCount(service.listCountCriteria(cri));
    //
    // model.addAttribute("pageMaker", pageMaker);

    // }

}
